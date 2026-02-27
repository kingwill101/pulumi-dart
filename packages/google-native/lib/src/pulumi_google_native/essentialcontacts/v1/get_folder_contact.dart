import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_contact_args.dart';
import 'get_folder_contact_result.dart';

/// Gets a single contact.
Future<GetFolderContactResult> getFolderContact(
  GetFolderContactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:essentialcontacts/v1:getFolderContact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderContactResult.fromMap(result);
}
