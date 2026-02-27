import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_contact_args.dart';
import 'get_organization_contact_result.dart';

/// Gets a single contact.
Future<GetOrganizationContactResult> getOrganizationContact(
  GetOrganizationContactArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:essentialcontacts/v1:getOrganizationContact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationContactResult.fromMap(result);
}
