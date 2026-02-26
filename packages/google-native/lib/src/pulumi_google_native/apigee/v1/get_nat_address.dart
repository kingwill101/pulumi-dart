import 'package:pulumi/pulumi.dart';
import 'get_nat_address_args.dart';
import 'get_nat_address_result.dart';

/// Gets the details of a NAT address. **Note:** Not supported for Apigee hybrid.
Future<GetNatAddressResult> getNatAddress(
  GetNatAddressArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getNatAddress',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetNatAddressResult.fromMap(result);
}
