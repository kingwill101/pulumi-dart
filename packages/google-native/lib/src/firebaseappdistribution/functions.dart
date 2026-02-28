import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_args.dart';
import 'get_group_result.dart';

/// Get a group.
/// [args] Arguments passed to this invoke. {@macro pulumi_firebaseappdistribution_v1_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaseappdistribution/v1:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}
