import 'package:pulumi/pulumi.dart';
import 'get_regional_parameter_args.dart';
import 'get_regional_parameter_result.dart';

/// Use this data source to get information about a Parameter Manager Regional Parameter.
Future<GetRegionalParameterResult> getRegionalParameter(
  GetRegionalParameterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getRegionalParameter:getRegionalParameter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetRegionalParameterResult.fromMap(result);
}
