import 'package:pulumi/pulumi.dart' hide Config;
import 'get_data_exchange_iam_policy_args2.dart';
import 'get_data_exchange_iam_policy_result2.dart';

/// Gets the IAM policy.
Future<GetDataExchangeIamPolicyResult2> getDataExchangeIamPolicy2(
  GetDataExchangeIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1beta1:getDataExchangeIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeIamPolicyResult2.fromMap(result);
}
