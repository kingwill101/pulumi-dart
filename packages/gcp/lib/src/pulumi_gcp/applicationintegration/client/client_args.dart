// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../client_cloud_kms_config/client_cloud_kms_config.dart';

/// The set of arguments for Client.
class ClientArgs {
  /// Cloud KMS config for AuthModule to encrypt/decrypt credentials.
  /// Structure is documented below.
  final pulumi.Input<ClientCloudKmsConfig>? cloudKmsConfig;

  /// Indicates if sample integrations should be created along with provisioning.
  final pulumi.Input<bool>? createSampleIntegrations;

  /// Location in which client needs to be provisioned.
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// (Optional, Deprecated)
  /// User input run-as service account, if empty, will bring up a new default service account.
  ///
  /// > **Warning:** `run_as_service_account` is deprecated and will be removed in a future major release.
  final pulumi.Input<String>? runAsServiceAccount;

  ClientArgs({
    this.cloudKmsConfig,
    this.createSampleIntegrations,
    required this.location,
    this.project,
    this.runAsServiceAccount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudKmsConfigValue = cloudKmsConfig;
    if (cloudKmsConfigValue != null) {
      map['cloudKmsConfig'] = pulumi.Input.mapOptionalInputValue<
          ClientCloudKmsConfig,
          Map<String, dynamic>>(cloudKmsConfigValue, (value) => value.toMap());
    }
    final createSampleIntegrationsValue = createSampleIntegrations;
    if (createSampleIntegrationsValue != null) {
      map['createSampleIntegrations'] = createSampleIntegrationsValue;
    }
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final runAsServiceAccountValue = runAsServiceAccount;
    if (runAsServiceAccountValue != null) {
      map['runAsServiceAccount'] = runAsServiceAccountValue;
    }
    return map;
  }

  factory ClientArgs.fromMap(Map<String, dynamic> map) {
    return ClientArgs(
      cloudKmsConfig: pulumi.Input.asOptionalInput<ClientCloudKmsConfig>(
          map['cloudKmsConfig']),
      createSampleIntegrations:
          pulumi.Input.asOptionalInput<bool>(map['createSampleIntegrations']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      runAsServiceAccount:
          pulumi.Input.asOptionalInput<String>(map['runAsServiceAccount']),
    );
  }
}
