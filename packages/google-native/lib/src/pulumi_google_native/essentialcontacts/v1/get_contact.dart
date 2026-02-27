import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contact_args.dart';
import 'get_contact_result.dart';

/// Gets a single contact.
Future<GetContactResult> getContact(
  GetContactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:essentialcontacts/v1:getContact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactResult.fromMap(result);
}
