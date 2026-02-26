import 'package:pulumi/pulumi.dart';
import 'get_organization_address_group_args.dart';
import 'get_organization_address_group_result.dart';

/// Gets details of a single address group.
Future<GetOrganizationAddressGroupResult> getOrganizationAddressGroup(
  GetOrganizationAddressGroupArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getOrganizationAddressGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationAddressGroupResult.fromMap(result);
}
