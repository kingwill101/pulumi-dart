import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameter_args.dart';
import 'get_parameter_result.dart';

/// Use this data source to get information about a Parameter Manager Parameter.
Future<GetParameterResult> getParameter(
  GetParameterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameter:getParameter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParameterResult.fromMap(result);
}
