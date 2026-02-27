import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_parameters_args.dart';
import 'get_regional_parameters_result.dart';

/// Use this data source to list the Parameter Manager Regional Parameters.
Future<GetRegionalParametersResult> getRegionalParameters(
  GetRegionalParametersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getRegionalParameters:getRegionalParameters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionalParametersResult.fromMap(result);
}
