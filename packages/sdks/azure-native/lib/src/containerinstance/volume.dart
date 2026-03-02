// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_file_volume.dart';
import 'git_repo_volume.dart';

/// The properties of the volume.
class Volume {
  /// The Azure File volume.
  final pulumi.Input<AzureFileVolume>? azureFile;
  /// The empty directory volume.
  final pulumi.Input<dynamic>? emptyDir;
  /// The git repo volume.
  final pulumi.Input<GitRepoVolume>? gitRepo;
  /// The name of the volume.
  final pulumi.Input<String> name;
  /// The secret volume.
  final pulumi.Input<Map<String, String>>? secret;
  /// The secret reference volume.
  final pulumi.Input<Map<String, String>>? secretReference;

  /// Creates a new [Volume].
  /// [azureFile] The Azure File volume.
  /// [emptyDir] The empty directory volume.
  /// [gitRepo] The git repo volume.
  /// [name] The name of the volume.
  /// [secret] The secret volume.
  /// [secretReference] The secret reference volume.
  Volume({
    this.azureFile,
    this.emptyDir,
    this.gitRepo,
    required this.name,
    this.secret,
    this.secretReference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureFile': ?pulumi.Input.mapOptionalInputValue<AzureFileVolume, Map<String, dynamic>>(azureFile, (value) => value.toMap()),
      'emptyDir': ?emptyDir,
      'gitRepo': ?pulumi.Input.mapOptionalInputValue<GitRepoVolume, Map<String, dynamic>>(gitRepo, (value) => value.toMap()),
      'name': name,
      'secret': ?secret,
      'secretReference': ?secretReference,
    };
  }

  factory Volume.fromMap(Map<String, dynamic> map) {
    return Volume(
      azureFile: map['azureFile'] == null ? null : (AzureFileVolume.fromMap((map['azureFile'] as Map).cast<String, dynamic>())).input(),
      emptyDir: map['emptyDir'] == null ? null : (map['emptyDir']).input(),
      gitRepo: map['gitRepo'] == null ? null : (GitRepoVolume.fromMap((map['gitRepo'] as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
      secret: map['secret'] == null ? null : ((map['secret'] as Map).cast<String, String>()).input(),
      secretReference: map['secretReference'] == null ? null : ((map['secretReference'] as Map).cast<String, String>()).input(),
    );
  }
}

