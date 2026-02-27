import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_quick_connect_args.dart';
import 'get_quick_connect_result.dart';

/// Provides details about a specific Amazon Connect Quick Connect.
///
/// ## Example Usage
///
/// By `name`
///
///
///
/// By `quick_connect_id`
Future<GetQuickConnectResult> getQuickConnect(
  GetQuickConnectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getQuickConnect:getQuickConnect',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQuickConnectResult.fromMap(result);
}
