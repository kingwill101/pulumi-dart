import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_address_group_args.dart';
import 'get_organization_address_group_result.dart';

/// Gets details of a single address group.
Future<GetOrganizationAddressGroupResult> getOrganizationAddressGroup(
  GetOrganizationAddressGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getOrganizationAddressGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationAddressGroupResult.fromMap(result);
}
