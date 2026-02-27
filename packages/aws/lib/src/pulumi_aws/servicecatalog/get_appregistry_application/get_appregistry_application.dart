import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_appregistry_application_args.dart';
import 'get_appregistry_application_result.dart';

/// Data source for managing an AWS Service Catalog AppRegistry Application.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetAppregistryApplicationResult> getAppregistryApplication(
  GetAppregistryApplicationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:servicecatalog/getAppregistryApplication:getAppregistryApplication',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppregistryApplicationResult.fromMap(result);
}
