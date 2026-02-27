import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_views_args.dart';
import 'get_views_result.dart';

/// Provides details about an AWS Billing Views.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetViewsResult> getViews(
  GetViewsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:billing/getViews:getViews',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetViewsResult.fromMap(result);
}
