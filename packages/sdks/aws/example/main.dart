import 'package:pulumi/pulumi.dart' as pulumi;

import 'package:pulumi_aws/s3.dart' as pulumi_aws_s3;

class AwsStack extends pulumi.Stack {
  late final List<pulumi.OutputProperty> _outputProperties;

  AwsStack() {
    final bucket = pulumi_aws_s3.Bucket(
      'bucket',
      args: pulumi_aws_s3.BucketArgs(forceDestroy: pulumi.Input.asInput(true)),
    );

    _outputProperties = [
      pulumi.OutputProperty(
        'bucketName',
        pulumi.output(bucket.bucket).apply<Object?>((value) => value),
      ),
    ];
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() => _outputProperties;
}

Future<void> main() async {
  await pulumi.Deployment.runOrThrow(() => AwsStack());
}
