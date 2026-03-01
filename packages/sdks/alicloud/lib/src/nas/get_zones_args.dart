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
    pulumi.Output<String>? fileSystemType,
    pulumi.Output<String>? outputFile,
  }) :
      fileSystemType = pulumi.Input.asOptionalInput<String>(fileSystemType),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemType': ?fileSystemType,
      'outputFile': ?outputFile,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      fileSystemType: map['fileSystemType'] == null ? null : pulumi.Output.create<String>(map['fileSystemType'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

