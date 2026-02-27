import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_args.dart';
import 'get_bucket_replication_configuration_result.dart';

/// Data source for managing an AWS S3 (Simple Storage) Bucket Replication Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetBucketReplicationConfigurationResult>
    getBucketReplicationConfiguration(
  GetBucketReplicationConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getBucketReplicationConfiguration:getBucketReplicationConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBucketReplicationConfigurationResult.fromMap(result);
}
