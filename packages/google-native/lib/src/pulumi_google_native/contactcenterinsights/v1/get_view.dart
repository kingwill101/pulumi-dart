import 'package:pulumi/pulumi.dart' hide Config;
import 'get_view_args.dart';
import 'get_view_result.dart';

/// Gets a view.
Future<GetViewResult> getView(
  GetViewArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenterinsights/v1:getView',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetViewResult.fromMap(result);
}
