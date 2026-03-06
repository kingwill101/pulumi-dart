// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directories_directory_saml_identity_provider_configuration.dart';
import 'get_directories_directory_task.dart';

class GetDirectoriesDirectory {
  /// The CreateTime of the CloudSSO directory.
  final pulumi.Input<String> createTime;
  /// The DirectoryId of the CloudSSO directory.
  final pulumi.Input<String> directoryId;
  /// The name of the CloudSSO directory.
  final pulumi.Input<String> directoryName;
  /// The ID of the Directory.
  final pulumi.Input<String> id;
  /// The mfa authentication status. Valid values: `Enabled` or `Disabled`. Default to `Disabled`.
  final pulumi.Input<String> mfaAuthenticationStatus;
  /// The Region of the CloudSSO directory.
  final pulumi.Input<String> region;
  /// The saml identity provider configuration.
  final pulumi.Input<List<GetDirectoriesDirectorySamlIdentityProviderConfiguration>> samlIdentityProviderConfigurations;
  /// The scim synchronization status. Valid values: `Enabled` or `Disabled`. Default to `Disabled`.
  final pulumi.Input<String> scimSynchronizationStatus;
  /// Asynchronous Task Information Array.
  final pulumi.Input<List<GetDirectoriesDirectoryTask>> tasks;

  /// Creates a new [GetDirectoriesDirectory].
  /// [createTime] The CreateTime of the CloudSSO directory.
  /// [directoryId] The DirectoryId of the CloudSSO directory.
  /// [directoryName] The name of the CloudSSO directory.
  /// [id] The ID of the Directory.
  /// [mfaAuthenticationStatus] The mfa authentication status. Valid values: `Enabled` or `Disabled`. Default to `Disabled`.
  /// [region] The Region of the CloudSSO directory.
  /// [samlIdentityProviderConfigurations] The saml identity provider configuration.
  /// [scimSynchronizationStatus] The scim synchronization status. Valid values: `Enabled` or `Disabled`. Default to `Disabled`.
  /// [tasks] Asynchronous Task Information Array.
  const GetDirectoriesDirectory({
    required this.createTime,
    required this.directoryId,
    required this.directoryName,
    required this.id,
    required this.mfaAuthenticationStatus,
    required this.region,
    required this.samlIdentityProviderConfigurations,
    required this.scimSynchronizationStatus,
    required this.tasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'directoryId': directoryId,
      'directoryName': directoryName,
      'id': id,
      'mfaAuthenticationStatus': mfaAuthenticationStatus,
      'region': region,
      'samlIdentityProviderConfigurations': pulumi.Input.mapInputValue<List<GetDirectoriesDirectorySamlIdentityProviderConfiguration>, List<Map<String, dynamic>>>(samlIdentityProviderConfigurations, (value) => pulumi.Input.encodeList<GetDirectoriesDirectorySamlIdentityProviderConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scimSynchronizationStatus': scimSynchronizationStatus,
      'tasks': pulumi.Input.mapInputValue<List<GetDirectoriesDirectoryTask>, List<Map<String, dynamic>>>(tasks, (value) => pulumi.Input.encodeList<GetDirectoriesDirectoryTask, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDirectoriesDirectory.fromMap(Map<String, dynamic> map) {
    return GetDirectoriesDirectory(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      directoryId: pulumi.Input.fromValue(map['directoryId'] as String),
      directoryName: pulumi.Input.fromValue(map['directoryName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      mfaAuthenticationStatus: pulumi.Input.fromValue(map['mfaAuthenticationStatus'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      samlIdentityProviderConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDirectoriesDirectorySamlIdentityProviderConfiguration>(map['samlIdentityProviderConfigurations']!, (value) => GetDirectoriesDirectorySamlIdentityProviderConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      scimSynchronizationStatus: pulumi.Input.fromValue(map['scimSynchronizationStatus'] as String),
      tasks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDirectoriesDirectoryTask>(map['tasks']!, (value) => GetDirectoriesDirectoryTask.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

