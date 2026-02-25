import 'package:pulumi/pulumi.dart';
import '../resource_annotation.dart';
import '../resource.dart';

part 'bucket.g.dart';

@PulumiResource('aws:s3/bucket:Bucket')
class Bucket extends CustomResource {
  Bucket(
      String name, Map<String, Input<dynamic>> props, ResourceOptions options)
      : super('aws:s3/bucket:Bucket', name, props, options);

  @override
  Resource _createResource(
      String name, Map<String, Input<dynamic>> props, ResourceOptions options) {
    return Bucket(name, props, options);
  }

  // Resource-specific properties and methods...
}
