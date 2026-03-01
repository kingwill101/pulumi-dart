// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_file_systems_system.dart';

/// Result data returned by getFileSystems.
class GetFileSystemsResult {
  final String? descriptionRegex;
  /// A list of FileSystem descriptions.
  final List<String> descriptions;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of FileSystem Id.
  final List<String> ids;
  final String? outputFile;
  /// ProtocolType block of the FileSystem
  final String? protocolType;
  /// StorageType block of the FileSystem.
  final String? storageType;
  /// A list of VPCs. Each element contains the following attributes:
  final List<GetFileSystemsSystem> systems;

  /// Creates a new [GetFileSystemsResult].
  /// [descriptionRegex] Optional.
  /// [descriptions] A list of FileSystem descriptions.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of FileSystem Id.
  /// [outputFile] Optional.
  /// [protocolType] ProtocolType block of the FileSystem
  /// [storageType] StorageType block of the FileSystem.
  /// [systems] A list of VPCs. Each element contains the following attributes:
  GetFileSystemsResult({
    this.descriptionRegex,
    required this.descriptions,
    required this.id,
    required this.ids,
    this.outputFile,
    this.protocolType,
    this.storageType,
    required this.systems,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'descriptions': descriptions,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'protocolType': ?protocolType,
      'storageType': ?storageType,
      'systems': pulumi.Input.encodeList<GetFileSystemsSystem, Map<String, dynamic>>(systems, (value) => value.toMap()),
    };
  }

  factory GetFileSystemsResult.fromMap(Map<String, dynamic> map) {
    return GetFileSystemsResult(
      descriptionRegex: map['descriptionRegex'] == null ? null : map['descriptionRegex'] as String,
      descriptions: (map['descriptions'] as List).cast<String>(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      protocolType: map['protocolType'] == null ? null : map['protocolType'] as String,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
      systems: pulumi.Input.decodeList<GetFileSystemsSystem>(map['systems'], (value) => GetFileSystemsSystem.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

