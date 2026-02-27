import 'package:pulumi/pulumi.dart' hide Config;
import 'get_customer_repricing_config_args.dart';
import 'get_customer_repricing_config_result.dart';

/// Gets information about how a Reseller modifies their bill before sending it to a Customer. Possible Error Codes: * PERMISSION_DENIED: If the account making the request and the account being queried are different. * NOT_FOUND: The CustomerRepricingConfig was not found. * INTERNAL: Any non-user error related to technical issues in the backend. In this case, contact Cloud Channel support. Return Value: If successful, the CustomerRepricingConfig resource, otherwise returns an error.
Future<GetCustomerRepricingConfigResult> getCustomerRepricingConfig(
  GetCustomerRepricingConfigArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudchannel/v1:getCustomerRepricingConfig',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomerRepricingConfigResult.fromMap(result);
}
