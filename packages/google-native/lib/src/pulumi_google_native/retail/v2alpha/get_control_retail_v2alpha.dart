import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_retail_v2alpha_args.dart';
import 'get_control_retail_v2alpha_result.dart';

/// Gets a Control.
Future<GetControlRetailV2alphaResult> getControlRetailV2alpha(
  GetControlRetailV2alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:retail/v2alpha:getControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetControlRetailV2alphaResult.fromMap(result);
}
