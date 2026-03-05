// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_get_zones_get_zones_args_doc}
/// Arguments for getZones.
/// {@endtemplate}
/// {@macro pulumi_nas_get_zones_get_zones_args_doc}
class GetZonesArgs {
  /// The type of the file system.  Valid values: `standard`, `extreme`, `cpfs`.
  final pulumi.Input<String>? fileSystemType;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetZonesArgs].
  /// [fileSystemType] The type of the file system.  Valid values: `standard`, `extreme`, `cpfs`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetZonesArgs({
    this.fileSystemType,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemType': ?fileSystemType,
      'outputFile': ?outputFile,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      fileSystemType: (() { final guardedValue = map['fileSystemType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

