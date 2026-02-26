import 'package:pulumi/pulumi.dart';
import 'get_entitlement_args.dart';
import 'get_entitlement_result.dart';

/// Returns the requested Entitlement resource. Possible error codes: * PERMISSION_DENIED: The customer doesn't belong to the reseller. * INVALID_ARGUMENT: Required request parameters are missing or invalid. * NOT_FOUND: The customer entitlement was not found. Return value: The requested Entitlement resource.
Future<GetEntitlementResult> getEntitlement(
  GetEntitlementArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudchannel/v1:getEntitlement',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEntitlementResult.fromMap(result);
}
