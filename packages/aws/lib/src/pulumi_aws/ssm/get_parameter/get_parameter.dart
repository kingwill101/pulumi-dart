import 'package:pulumi/pulumi.dart';
import 'get_parameter_args.dart';
import 'get_parameter_result.dart';

/// Provides an SSM Parameter data source.
///
/// ## Example Usage
///
/// ### Default
///
///
///
/// ### With version
///
///
///
/// > **Note:** The unencrypted value of a SecureString will be stored in the raw state as plain-text.
Future<GetParameterResult> getParameter(
  GetParameterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getParameter:getParameter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetParameterResult.fromMap(result);
}
