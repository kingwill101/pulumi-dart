// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_volume_container_group_profile_response.dart';
import 'git_repo_volume_response.dart';

/// The properties of the volume.
class VolumeContainerGroupProfileResponse {
  /// The Azure File volume.
  final pulumi.Input<AzureFileVolumeContainerGroupProfileResponse>? azureFile;
  /// The empty directory volume.
  final pulumi.Input<dynamic>? emptyDir;
  /// The git repo volume.
  final pulumi.Input<GitRepoVolumeResponse>? gitRepo;
  /// The name of the volume.
  final pulumi.Input<String> name;
  /// The secret volume.
  final pulumi.Input<Map<String, String>>? secret;

  /// Creates a new [VolumeContainerGroupProfileResponse].
  /// [azureFile] The Azure File volume.
  /// [emptyDir] The empty directory volume.
  /// [gitRepo] The git repo volume.
  /// [name] The name of the volume.
  /// [secret] The secret volume.
  const VolumeContainerGroupProfileResponse({
    this.azureFile,
    this.emptyDir,
    this.gitRepo,
    required this.name,
    this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile': ?pulumi.Input.mapOptionalInputValue<AzureFileVolumeContainerGroupProfileResponse, Map<String, dynamic>>(azureFile, (value) => value.toMap()),
      'emptyDir': ?emptyDir,
      'gitRepo': ?pulumi.Input.mapOptionalInputValue<GitRepoVolumeResponse, Map<String, dynamic>>(gitRepo, (value) => value.toMap()),
      'name': name,
      'secret': ?secret,
    };
  }

  factory VolumeContainerGroupProfileResponse.fromMap(Map<String, dynamic> map) {
    return VolumeContainerGroupProfileResponse(
      azureFile: (() { final guardedValue = map['azureFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureFileVolumeContainerGroupProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emptyDir: (() { final guardedValue = map['emptyDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      gitRepo: (() { final guardedValue = map['gitRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GitRepoVolumeResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      secret: (() { final guardedValue = map['secret']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
