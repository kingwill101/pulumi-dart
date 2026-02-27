import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_address_group_networksecurity_v1beta1_args.dart';
import 'get_organization_address_group_networksecurity_v1beta1_result.dart';

/// Gets details of a single address group.
Future<GetOrganizationAddressGroupNetworksecurityV1beta1Result>
    getOrganizationAddressGroupNetworksecurityV1beta1(
  GetOrganizationAddressGroupNetworksecurityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getOrganizationAddressGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationAddressGroupNetworksecurityV1beta1Result.fromMap(
      result);
}
