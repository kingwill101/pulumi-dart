import 'package:pulumi/pulumi.dart' hide Config;
import 'get_dest_group_args.dart';
import 'get_dest_group_result.dart';

/// Retrieves an existing TunnelDestGroup.
Future<GetDestGroupResult> getDestGroup(
  GetDestGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:iap/v1:getDestGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDestGroupResult.fromMap(result);
}
