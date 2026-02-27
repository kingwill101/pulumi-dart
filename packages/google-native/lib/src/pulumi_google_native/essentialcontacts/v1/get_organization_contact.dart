import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_contact_args.dart';
import 'get_organization_contact_result.dart';

/// Gets a single contact.
Future<GetOrganizationContactResult> getOrganizationContact(
  GetOrganizationContactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:essentialcontacts/v1:getOrganizationContact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationContactResult.fromMap(result);
}
