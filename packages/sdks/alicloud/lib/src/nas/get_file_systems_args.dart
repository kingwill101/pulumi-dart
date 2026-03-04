// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_get_file_systems_get_file_systems_args_doc}
/// Arguments for getFileSystems.
/// {@endtemplate}
/// {@macro pulumi_nas_get_file_systems_get_file_systems_args_doc}
class GetFileSystemsArgs {
  /// A regex string to filter the results by the ：FileSystem description.
  final pulumi.Input<String>? descriptionRegex;

  /// A list of FileSystemId.
  final pulumi.Input<List<String>>? ids;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The protocol type of the file system.
  /// Valid values:
  /// `NFS`,
  /// `SMB` (Available when the `file_system_type` is `standard`).
  final pulumi.Input<String>? protocolType;

  /// The storage type of the file system.
  /// * Valid values:
  /// * `Performance` (Available when the `file_system_type` is `standard`)
  /// * `Capacity` (Available when the `file_system_type` is `standard`)
  final pulumi.Input<String>? storageType;

  /// Creates a new [GetFileSystemsArgs].
  /// [descriptionRegex] A regex string to filter the results by the ：FileSystem description.
  /// [ids] A list of FileSystemId.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [protocolType] The protocol type of the file system.
  /// [storageType] The storage type of the file system.
  GetFileSystemsArgs({
    this.descriptionRegex,
    this.ids,
    this.outputFile,
    this.protocolType,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'descriptionRegex': ?descriptionRegex,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'protocolType': ?protocolType,
      'storageType': ?storageType,
    };
  }

  factory GetFileSystemsArgs.fromMap(Map<String, dynamic> map) {
    return GetFileSystemsArgs(
      descriptionRegex: (() {
        final guardedValue = map['descriptionRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocolType: (() {
        final guardedValue = map['protocolType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageType: (() {
        final guardedValue = map['storageType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
