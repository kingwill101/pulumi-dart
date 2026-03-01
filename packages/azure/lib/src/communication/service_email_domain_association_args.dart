// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_communication_service_email_domain_association_service_email_domain_association_args_doc}
/// The set of arguments for ServiceEmailDomainAssociation.
/// {@endtemplate}
/// {@macro pulumi_communication_service_email_domain_association_service_email_domain_association_args_doc}
class ServiceEmailDomainAssociationArgs {
  /// The ID of the Communication Service. Changing this forces a new communication service email domain association to be created.
  final pulumi.Input<String> communicationServiceId;
  /// The ID of the EMail Service Domain. Changing this forces a new communication service email domain association to be created.
  final pulumi.Input<String> emailServiceDomainId;

  /// Creates a new [ServiceEmailDomainAssociationArgs].
  /// [communicationServiceId] The ID of the Communication Service. Changing this forces a new communication service email domain association to be created.
  /// [emailServiceDomainId] The ID of the EMail Service Domain. Changing this forces a new communication service email domain association to be created.
  ServiceEmailDomainAssociationArgs({
    required String communicationServiceId,
    required String emailServiceDomainId,
  }) :
      communicationServiceId = pulumi.Input.asInput<String>(communicationServiceId),
      emailServiceDomainId = pulumi.Input.asInput<String>(emailServiceDomainId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationServiceId': communicationServiceId,
      'emailServiceDomainId': emailServiceDomainId,
    };
  }

  factory ServiceEmailDomainAssociationArgs.fromMap(Map<String, dynamic> map) {
    return ServiceEmailDomainAssociationArgs(
      communicationServiceId: map['communicationServiceId'] as String,
      emailServiceDomainId: map['emailServiceDomainId'] as String,
    );
  }
}

