import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_retail_v2beta_args.dart';
import 'get_control_retail_v2beta_result.dart';

/// Gets a Control.
Future<GetControlRetailV2betaResult> getControlRetailV2beta(
  GetControlRetailV2betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2beta:getControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlRetailV2betaResult.fromMap(result);
}
