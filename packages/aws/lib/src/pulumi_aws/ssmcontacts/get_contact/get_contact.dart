import 'package:pulumi/pulumi.dart';
import 'get_contact_args.dart';
import 'get_contact_result.dart';

/// Data source for managing an AWS SSM Contact.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetContactResult> getContact(
  GetContactArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmcontacts/getContact:getContact',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContactResult.fromMap(result);
}
