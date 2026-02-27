import 'package:pulumi/pulumi.dart';
import 'get_contacts_rotation_args.dart';
import 'get_contacts_rotation_result.dart';

/// Provides a Terraform data source for managing a Contacts Rotation in AWS Systems Manager Incident Manager
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetContactsRotationResult> getContactsRotation(
  GetContactsRotationArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getContactsRotation:getContactsRotation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContactsRotationResult.fromMap(result);
}
