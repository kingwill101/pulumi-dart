// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_federated_identity_credential_application_federated_identity_credential_args_doc}
/// The set of arguments for ApplicationFederatedIdentityCredential.
/// {@endtemplate}
/// {@macro pulumi_index_application_federated_identity_credential_application_federated_identity_credential_args_doc}
class ApplicationFederatedIdentityCredentialArgs {
  /// The resource ID of the application for which this federated identity credential should be created. Changing this field forces a new resource to be created.
  final pulumi.Input<String> applicationId;
  /// List of audiences that can appear in the external token. This specifies what should be accepted in the `aud` claim of incoming tokens.
  final pulumi.Input<List<String>> audiences;
  /// A description for the federated identity credential.
  final pulumi.Input<String>? description;
  /// A unique display name for the federated identity credential. Changing this forces a new resource to be created.
  final pulumi.Input<String> displayName;
  /// The URL of the external identity provider, which must match the issuer claim of the external token being exchanged. The combination of the values of issuer and subject must be unique on the app.
  final pulumi.Input<String> issuer;
  /// The identifier of the external software workload within the external identity provider. The combination of issuer and subject must be unique on the app.
  final pulumi.Input<String> subject;

  /// Creates a new [ApplicationFederatedIdentityCredentialArgs].
  /// [applicationId] The resource ID of the application for which this federated identity credential should be created. Changing this field forces a new resource to be created.
  /// [audiences] List of audiences that can appear in the external token. This specifies what should be accepted in the `aud` claim of incoming tokens.
  /// [description] A description for the federated identity credential.
  /// [displayName] A unique display name for the federated identity credential. Changing this forces a new resource to be created.
  /// [issuer] The URL of the external identity provider, which must match the issuer claim of the external token being exchanged. The combination of the values of issuer and subject must be unique on the app.
  /// [subject] The identifier of the external software workload within the external identity provider. The combination of issuer and subject must be unique on the app.
  ApplicationFederatedIdentityCredentialArgs({
    required String applicationId,
    required List<String> audiences,
    String? description,
    required String displayName,
    required String issuer,
    required String subject,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      audiences = pulumi.Input.asInput<List<String>>(audiences),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      issuer = pulumi.Input.asInput<String>(issuer),
      subject = pulumi.Input.asInput<String>(subject);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'audiences': audiences,
      'description': ?description,
      'displayName': displayName,
      'issuer': issuer,
      'subject': subject,
    };
  }

  factory ApplicationFederatedIdentityCredentialArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationFederatedIdentityCredentialArgs(
      applicationId: map['applicationId'] as String,
      audiences: (map['audiences'] as List).cast<String>(),
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      issuer: map['issuer'] as String,
      subject: map['subject'] as String,
    );
  }
}

