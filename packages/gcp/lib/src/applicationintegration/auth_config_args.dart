// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_client_certificate.dart';
import 'auth_config_decrypted_credential.dart';

/// {@template pulumi_applicationintegration_auth_config_auth_config_args_doc}
/// The set of arguments for AuthConfig.
/// {@endtemplate}
/// {@macro pulumi_applicationintegration_auth_config_auth_config_args_doc}
class AuthConfigArgs {
  /// Raw client certificate
  /// Structure is documented below.
  final pulumi.Input<AuthConfigClientCertificate>? clientCertificate;

  /// Raw auth credentials.
  /// Structure is documented below.
  final pulumi.Input<AuthConfigDecryptedCredential>? decryptedCredential;

  /// A description of the auth config.
  final pulumi.Input<String>? description;

  /// The name of the auth config.
  final pulumi.Input<String> displayName;

  /// User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<List<String>>? expiryNotificationDurations;

  /// Location in which client needs to be provisioned.
  final pulumi.Input<String> location;

  /// User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? overrideValidTime;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The visibility of the auth config.
  /// Possible values are: `PRIVATE`, `CLIENT_VISIBLE`.
  final pulumi.Input<String>? visibility;

  /// Creates a new [AuthConfigArgs].
  /// [clientCertificate] Raw client certificate
  /// [decryptedCredential] Raw auth credentials.
  /// [description] A description of the auth config.
  /// [displayName] The name of the auth config.
  /// [expiryNotificationDurations] User can define the time to receive notification after which the auth config becomes invalid. Support up to 30 days. Support granularity in hours.
  /// [location] Location in which client needs to be provisioned.
  /// [overrideValidTime] User provided expiry time to override. For the example of Salesforce, username/password credentials can be valid for 6 months depending on the instance settings.
  /// [project] The ID of the project in which the resource belongs.
  /// [visibility] The visibility of the auth config.
  AuthConfigArgs({
    AuthConfigClientCertificate? clientCertificate,
    AuthConfigDecryptedCredential? decryptedCredential,
    String? description,
    required String displayName,
    List<String>? expiryNotificationDurations,
    required String location,
    String? overrideValidTime,
    String? project,
    String? visibility,
  })  : clientCertificate =
            pulumi.Input.asOptionalInput<AuthConfigClientCertificate>(
                clientCertificate),
        decryptedCredential =
            pulumi.Input.asOptionalInput<AuthConfigDecryptedCredential>(
                decryptedCredential),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asInput<String>(displayName),
        expiryNotificationDurations =
            pulumi.Input.asOptionalInput<List<String>>(
                expiryNotificationDurations),
        location = pulumi.Input.asInput<String>(location),
        overrideValidTime =
            pulumi.Input.asOptionalInput<String>(overrideValidTime),
        project = pulumi.Input.asOptionalInput<String>(project),
        visibility = pulumi.Input.asOptionalInput<String>(visibility);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientCertificateValue = clientCertificate;
    if (clientCertificateValue != null) {
      map['clientCertificate'] = pulumi.Input.mapOptionalInputValue<
              AuthConfigClientCertificate, Map<String, dynamic>>(
          clientCertificateValue, (value) => value.toMap());
    }
    final decryptedCredentialValue = decryptedCredential;
    if (decryptedCredentialValue != null) {
      map['decryptedCredential'] = pulumi.Input.mapOptionalInputValue<
              AuthConfigDecryptedCredential, Map<String, dynamic>>(
          decryptedCredentialValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final expiryNotificationDurationsValue = expiryNotificationDurations;
    if (expiryNotificationDurationsValue != null) {
      map['expiryNotificationDurations'] = expiryNotificationDurationsValue;
    }
    map['location'] = location;
    final overrideValidTimeValue = overrideValidTime;
    if (overrideValidTimeValue != null) {
      map['overrideValidTime'] = overrideValidTimeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final visibilityValue = visibility;
    if (visibilityValue != null) {
      map['visibility'] = visibilityValue;
    }
    return map;
  }

  factory AuthConfigArgs.fromMap(Map<String, dynamic> map) {
    return AuthConfigArgs(
      clientCertificate: map['clientCertificate'] == null
          ? null
          : AuthConfigClientCertificate.fromMap(
              (map['clientCertificate'] as Map).cast<String, dynamic>()),
      decryptedCredential: map['decryptedCredential'] == null
          ? null
          : AuthConfigDecryptedCredential.fromMap(
              (map['decryptedCredential'] as Map).cast<String, dynamic>()),
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      expiryNotificationDurations: map['expiryNotificationDurations'] == null
          ? null
          : (map['expiryNotificationDurations'] as List).cast<String>(),
      location: map['location'] as String,
      overrideValidTime: map['overrideValidTime'] == null
          ? null
          : map['overrideValidTime'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      visibility:
          map['visibility'] == null ? null : map['visibility'] as String,
    );
  }
}
