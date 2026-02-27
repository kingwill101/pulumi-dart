import 'package:pulumi/pulumi.dart';
import 'get_parameter_args.dart';
import 'get_parameter_result.dart';

/// Use this data source to get information about a Parameter Manager Parameter.
Future<GetParameterResult> getParameter(
  GetParameterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameter:getParameter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetParameterResult.fromMap(result);
}
