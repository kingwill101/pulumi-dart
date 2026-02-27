import 'package:pulumi/pulumi.dart' hide Config;
import 'get_data_exchange_listing_iam_policy_args2.dart';
import 'get_data_exchange_listing_iam_policy_result2.dart';

/// Gets the IAM policy.
Future<GetDataExchangeListingIamPolicyResult2> getDataExchangeListingIamPolicy2(
  GetDataExchangeListingIamPolicyArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1beta1:getDataExchangeListingIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeListingIamPolicyResult2.fromMap(result);
}
