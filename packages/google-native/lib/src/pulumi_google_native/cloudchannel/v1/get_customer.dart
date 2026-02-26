import 'package:pulumi/pulumi.dart';
import 'get_customer_args.dart';
import 'get_customer_result.dart';

/// Returns the requested Customer resource. Possible error codes: * PERMISSION_DENIED: The reseller account making the request is different from the reseller account in the API request. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The customer resource doesn't exist. Usually the result of an invalid name parameter. Return value: The Customer resource.
Future<GetCustomerResult> getCustomer(
  GetCustomerArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudchannel/v1:getCustomer',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCustomerResult.fromMap(result);
}
