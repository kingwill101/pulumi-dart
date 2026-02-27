import 'package:pulumi/pulumi.dart';
import 'get_serverless_collection_args.dart';
import 'get_serverless_collection_result.dart';

/// Data source for managing an AWS OpenSearch Serverless Collection.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetServerlessCollectionResult> getServerlessCollection(
  GetServerlessCollectionArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:opensearch/getServerlessCollection:getServerlessCollection',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetServerlessCollectionResult.fromMap(result);
}
