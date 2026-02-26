import 'package:pulumi/pulumi.dart';
import 'get_data_exchange_listing_iam_policy_args.dart';
import 'get_data_exchange_listing_iam_policy_result.dart';

/// Gets the IAM policy.
Future<GetDataExchangeListingIamPolicyResult> getDataExchangeListingIamPolicy(
  GetDataExchangeListingIamPolicyArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:analyticshub/v1:getDataExchangeListingIamPolicy',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataExchangeListingIamPolicyResult.fromMap(result);
}
