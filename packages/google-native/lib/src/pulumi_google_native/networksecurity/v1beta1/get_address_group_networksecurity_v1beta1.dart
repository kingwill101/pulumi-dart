import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_group_networksecurity_v1beta1_args.dart';
import 'get_address_group_networksecurity_v1beta1_result.dart';

/// Gets details of a single address group.
Future<GetAddressGroupNetworksecurityV1beta1Result>
    getAddressGroupNetworksecurityV1beta1(
  GetAddressGroupNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAddressGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupNetworksecurityV1beta1Result.fromMap(result);
}
