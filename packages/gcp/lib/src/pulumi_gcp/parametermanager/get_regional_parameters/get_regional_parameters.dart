import 'package:pulumi/pulumi.dart';
import 'get_regional_parameters_args.dart';
import 'get_regional_parameters_result.dart';

/// Use this data source to list the Parameter Manager Regional Parameters.
Future<GetRegionalParametersResult> getRegionalParameters(
  GetRegionalParametersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getRegionalParameters:getRegionalParameters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalParametersResult.fromMap(result);
}
