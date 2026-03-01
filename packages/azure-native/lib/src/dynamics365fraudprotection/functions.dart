import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_details_args.dart';
import 'get_instance_details_result.dart';

/// Gets details about the specified instances.
///
/// Uses Azure REST API version 2021-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_dynamics365fraudprotection_get_instance_details_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceDetailsResult> getInstanceDetails(
  GetInstanceDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:dynamics365fraudprotection:getInstanceDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceDetailsResult.fromMap(result);
}
