import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_resource_collection_args.dart';
import 'get_resource_collection_result.dart';

/// Data source for managing an AWS DevOps Guru Resource Collection.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetResourceCollectionResult> getResourceCollection(
  GetResourceCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:devopsguru/getResourceCollection:getResourceCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceCollectionResult.fromMap(result);
}
