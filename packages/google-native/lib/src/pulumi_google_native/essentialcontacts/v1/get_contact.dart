import 'package:pulumi/pulumi.dart' hide Config;
import 'get_contact_args.dart';
import 'get_contact_result.dart';

/// Gets a single contact.
Future<GetContactResult> getContact(
  GetContactArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:essentialcontacts/v1:getContact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContactResult.fromMap(result);
}
