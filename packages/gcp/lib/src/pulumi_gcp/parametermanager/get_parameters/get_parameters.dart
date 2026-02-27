import 'package:pulumi/pulumi.dart';
import 'get_parameters_args.dart';
import 'get_parameters_result.dart';

/// Use this data source to list the Parameter Manager Parameters.
Future<GetParametersResult> getParameters(
  GetParametersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameters:getParameters',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetParametersResult.fromMap(result);
}
