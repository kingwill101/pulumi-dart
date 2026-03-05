import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_google_native/storage.dart' as storage;

class GoogleNativeStorageBucketStack extends pulumi.Stack {
  GoogleNativeStorageBucketStack() : super() {
    final config = pulumi.Config();
    final bucketName = config.require('bucketName');
    final location = config.get('location') ?? 'US';
    final storageClass = config.get('storageClass') ?? 'STANDARD';

    final bucket = storage.Bucket(
      'bucket',
      args: storage.BucketArgs(
        name: bucketName.output(),
        location: location.output(),
        storageClass: storageClass.output(),
      ),
    );

    registerOutputs({
      'name': bucket.name,
      'location': bucket.location,
      'selfLink': bucket.selfLink,
      'project': bucket.project,
    });
  }
}
