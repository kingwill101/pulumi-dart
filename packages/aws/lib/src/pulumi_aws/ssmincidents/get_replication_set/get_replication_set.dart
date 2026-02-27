import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replication_set_args.dart';
import 'get_replication_set_result.dart';

/// > **NOTE:** The AWS Region specified by a provider must always be one of the Regions specified for the replication set.
///
/// Use this data source to manage a replication set in AWS Systems Manager Incident Manager.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetReplicationSetResult> getReplicationSet(
  GetReplicationSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmincidents/getReplicationSet:getReplicationSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplicationSetResult.fromMap(result);
}
