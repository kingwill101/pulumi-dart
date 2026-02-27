import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contact_args.dart';
import 'get_contact_result.dart';

/// Data source for managing an AWS SSM Contact.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetContactResult> getContact(
  GetContactArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssmcontacts/getContact:getContact',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactResult.fromMap(result);
}
