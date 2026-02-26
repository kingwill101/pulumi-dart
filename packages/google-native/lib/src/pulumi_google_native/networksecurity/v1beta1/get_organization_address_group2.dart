import 'package:pulumi/pulumi.dart';
import 'get_organization_address_group_args2.dart';
import 'get_organization_address_group_result2.dart';

/// Gets details of a single address group.
Future<GetOrganizationAddressGroupResult2> getOrganizationAddressGroup2(
  GetOrganizationAddressGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getOrganizationAddressGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationAddressGroupResult2.fromMap(result);
}
