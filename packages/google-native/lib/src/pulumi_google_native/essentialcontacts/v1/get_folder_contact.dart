import 'package:pulumi/pulumi.dart' hide Config;
import 'get_folder_contact_args.dart';
import 'get_folder_contact_result.dart';

/// Gets a single contact.
Future<GetFolderContactResult> getFolderContact(
  GetFolderContactArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:essentialcontacts/v1:getFolderContact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderContactResult.fromMap(result);
}
