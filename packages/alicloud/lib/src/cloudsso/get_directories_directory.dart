// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_directories_directory_saml_identity_provider_configuration.dart';
import 'get_directories_directory_task.dart';

class GetDirectoriesDirectory {
  /// The CreateTime of the CloudSSO directory.
  final String createTime;
  /// The DirectoryId of the CloudSSO directory.
  final String directoryId;
  /// The name of the CloudSSO directory.
  final String directoryName;
  /// The ID of the Directory.
  final String id;
  /// The mfa authentication status. Valid values: `Enabled` or `Disabled`. Default to `Disabled`.
  final String mfaAuthenticationStatus;
  /// The Region of the CloudSSO directory.
  final String region;
  /// The saml identity provider configuration.
  final List<GetDirectoriesDirectorySamlIdentityProviderConfiguration> samlIdentityProviderConfigurations;
  /// The scim synchronization status. Valid values: `Enabled` or `Disabled`. Default to `Disabled`.
  final String scimSynchronizationStatus;
  /// Asynchronous Task Information Array.
  final List<GetDirectoriesDirectoryTask> tasks;

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
  GetDirectoriesDirectory({
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
      'samlIdentityProviderConfigurations': pulumi.Input.encodeList<GetDirectoriesDirectorySamlIdentityProviderConfiguration, Map<String, dynamic>>(samlIdentityProviderConfigurations, (value) => value.toMap()),
      'scimSynchronizationStatus': scimSynchronizationStatus,
      'tasks': pulumi.Input.encodeList<GetDirectoriesDirectoryTask, Map<String, dynamic>>(tasks, (value) => value.toMap()),
    };
  }

  factory GetDirectoriesDirectory.fromMap(Map<String, dynamic> map) {
    return GetDirectoriesDirectory(
      createTime: map['createTime'] as String,
      directoryId: map['directoryId'] as String,
      directoryName: map['directoryName'] as String,
      id: map['id'] as String,
      mfaAuthenticationStatus: map['mfaAuthenticationStatus'] as String,
      region: map['region'] as String,
      samlIdentityProviderConfigurations: pulumi.Input.decodeList<GetDirectoriesDirectorySamlIdentityProviderConfiguration>(map['samlIdentityProviderConfigurations'], (value) => GetDirectoriesDirectorySamlIdentityProviderConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      scimSynchronizationStatus: map['scimSynchronizationStatus'] as String,
      tasks: pulumi.Input.decodeList<GetDirectoriesDirectoryTask>(map['tasks'], (value) => GetDirectoriesDirectoryTask.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

