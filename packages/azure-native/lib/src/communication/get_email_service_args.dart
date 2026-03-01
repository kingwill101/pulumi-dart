// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_get_email_service_args_doc}
/// Arguments for getEmailService.
/// {@endtemplate}
/// {@macro pulumi_communication_get_email_service_args_doc}
class GetEmailServiceArgs {
  /// The name of the EmailService resource.
  final pulumi.Input<String> emailServiceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEmailServiceArgs].
  /// [emailServiceName] The name of the EmailService resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEmailServiceArgs({
    required String emailServiceName,
    required String resourceGroupName,
  }) :
      emailServiceName = pulumi.Input.asInput<String>(emailServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailServiceName': emailServiceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEmailServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetEmailServiceArgs(
      emailServiceName: map['emailServiceName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

