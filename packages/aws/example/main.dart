// ignore_for_file: unused_import
import 'package:pulumi/pulumi.dart';
import 'package:pulumi_aws/pulumi_aws.dart' as provider;
import 'package:pulumi_aws/s3.dart' as s3;

class ExampleStack extends Stack {
  ExampleStack() {
    s3.BucketV2(
      "mybucket",
      args: s3.BucketV2Args(bucket: "myBucket"),
    );
  }
}

Future<void> main() async {
  await Deployment.run(() => ExampleStack());
}
