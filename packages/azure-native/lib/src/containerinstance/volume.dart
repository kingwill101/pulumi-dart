// ignore_for_file: unused_element, unnecessary_cast

import 'azure_file_volume.dart';
import 'git_repo_volume.dart';

/// The properties of the volume.
class Volume {
  /// The Azure File volume.
  final AzureFileVolume? azureFile;
  /// The empty directory volume.
  final dynamic emptyDir;
  /// The git repo volume.
  final GitRepoVolume? gitRepo;
  /// The name of the volume.
  final String name;
  /// The secret volume.
  final Map<String, String>? secret;
  /// The secret reference volume.
  final Map<String, String>? secretReference;

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
      'azureFile': ?azureFile == null ? null : azureFile!.toMap(),
      'emptyDir': ?emptyDir,
      'gitRepo': ?gitRepo == null ? null : gitRepo!.toMap(),
      'name': name,
      'secret': ?secret,
      'secretReference': ?secretReference,
    };
  }

  factory Volume.fromMap(Map<String, dynamic> map) {
    return Volume(
      azureFile: map['azureFile'] == null ? null : AzureFileVolume.fromMap((map['azureFile'] as Map).cast<String, dynamic>()),
      emptyDir: map['emptyDir'] == null ? null : map['emptyDir'],
      gitRepo: map['gitRepo'] == null ? null : GitRepoVolume.fromMap((map['gitRepo'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      secret: map['secret'] == null ? null : (map['secret'] as Map).cast<String, String>(),
      secretReference: map['secretReference'] == null ? null : (map['secretReference'] as Map).cast<String, String>(),
    );
  }
}

