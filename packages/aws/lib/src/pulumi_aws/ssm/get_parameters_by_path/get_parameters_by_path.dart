import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameters_by_path_args.dart';
import 'get_parameters_by_path_result.dart';

/// Use this data source to get information about one or more System Manager parameters in a specific hierarchy.
///
/// ## Example Usage
///
///
///
/// > **Note:** When the `with_decryption` argument is set to `true`, the unencrypted values of `SecureString` parameters will be stored in the raw state as plain-text as per normal Terraform behavior. > **Note:** The data source follows the behavior of the [SSM API](https://docs.aws.amazon.com/sdk-for-go/api/service/ssm/#Parameter) to return a string value, regardless of parameter type. For `StringList` type where the value is returned as a comma-separated string with no spaces between comma, you may use the built-in split function to get values in a list. Example: `split(",", data.aws_ssm_parameter.subnets.value)`
Future<GetParametersByPathResult> getParametersByPath(
  GetParametersByPathArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getParametersByPath:getParametersByPath',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetParametersByPathResult.fromMap(result);
}
