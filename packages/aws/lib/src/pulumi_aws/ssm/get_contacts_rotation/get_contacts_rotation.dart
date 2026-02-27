import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contacts_rotation_args.dart';
import 'get_contacts_rotation_result.dart';

/// Provides a Terraform data source for managing a Contacts Rotation in AWS Systems Manager Incident Manager
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetContactsRotationResult> getContactsRotation(
  GetContactsRotationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ssm/getContactsRotation:getContactsRotation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetContactsRotationResult.fromMap(result);
}
