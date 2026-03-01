// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_cloud_kms_config.dart';

/// {@template pulumi_applicationintegration_client_client_args_doc}
/// The set of arguments for Client.
/// {@endtemplate}
/// {@macro pulumi_applicationintegration_client_client_args_doc}
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

  /// Creates a new [ClientArgs].
  /// [cloudKmsConfig] Cloud KMS config for AuthModule to encrypt/decrypt credentials.
  /// [createSampleIntegrations] Indicates if sample integrations should be created along with provisioning.
  /// [location] Location in which client needs to be provisioned.
  /// [project] The ID of the project in which the resource belongs.
  /// [runAsServiceAccount] (Optional, Deprecated)
  ClientArgs({
    ClientCloudKmsConfig? cloudKmsConfig,
    bool? createSampleIntegrations,
    required String location,
    String? project,
    String? runAsServiceAccount,
  }) : cloudKmsConfig = pulumi.Input.asOptionalInput<ClientCloudKmsConfig>(
         cloudKmsConfig,
       ),
       createSampleIntegrations = pulumi.Input.asOptionalInput<bool>(
         createSampleIntegrations,
       ),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       runAsServiceAccount = pulumi.Input.asOptionalInput<String>(
         runAsServiceAccount,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudKmsConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClientCloudKmsConfig,
            Map<String, dynamic>
          >(cloudKmsConfig, (value) => value.toMap()),
      'createSampleIntegrations': ?createSampleIntegrations,
      'location': location,
      'project': ?project,
      'runAsServiceAccount': ?runAsServiceAccount,
    };
  }

  factory ClientArgs.fromMap(Map<String, dynamic> map) {
    return ClientArgs(
      cloudKmsConfig: map['cloudKmsConfig'] == null
          ? null
          : ClientCloudKmsConfig.fromMap(
              (map['cloudKmsConfig'] as Map).cast<String, dynamic>(),
            ),
      createSampleIntegrations: map['createSampleIntegrations'] == null
          ? null
          : map['createSampleIntegrations'] as bool,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      runAsServiceAccount: map['runAsServiceAccount'] == null
          ? null
          : map['runAsServiceAccount'] as String,
    );
  }
}
