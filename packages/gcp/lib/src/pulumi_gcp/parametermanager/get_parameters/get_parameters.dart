import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameters_args.dart';
import 'get_parameters_result.dart';

/// Use this data source to list the Parameter Manager Parameters.
Future<GetParametersResult> getParameters(
  GetParametersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:parametermanager/getParameters:getParameters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParametersResult.fromMap(result);
}
