import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_aws/pulumi_aws.dart' as aws;

class EksDistroStack extends pulumi.Stack {
  late final pulumi.Output<String> stateStoreBucketName;
  late final pulumi.Output<String> stateStoreUri;

  EksDistroStack() {
    final store = aws.s3.Bucket('kops-state-store');

    stateStoreBucketName = store.id;
    stateStoreUri = store.id.apply((id) => 's3://$id');
  }

  @override
  List<pulumi.OutputProperty> getOutputProperties() {
    return [
      pulumi.OutputProperty('stateStoreBucketName', stateStoreBucketName),
      pulumi.OutputProperty('stateStoreUri', stateStoreUri),
    ];
  }
}
