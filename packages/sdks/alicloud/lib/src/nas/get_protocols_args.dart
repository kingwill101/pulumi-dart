// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_nas_get_protocols_get_protocols_args_doc}
/// Arguments for getProtocols.
/// {@endtemplate}
/// {@macro pulumi_nas_get_protocols_get_protocols_args_doc}
class GetProtocolsArgs {
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The file system type. Valid Values: `Performance` and `Capacity`.
  final pulumi.Input<String> type;
  /// String to filter results by zone id.
  final pulumi.Input<String>? zoneId;

  /// Creates a new [GetProtocolsArgs].
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [type] The file system type. Valid Values: `Performance` and `Capacity`.
  /// [zoneId] String to filter results by zone id.
  GetProtocolsArgs({
    pulumi.Output<String>? outputFile,
    required pulumi.Output<String> type,
    pulumi.Output<String>? zoneId,
  }) :
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      type = pulumi.Input.asInput<String>(type),
      zoneId = pulumi.Input.asOptionalInput<String>(zoneId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputFile': ?outputFile,
      'type': type,
      'zoneId': ?zoneId,
    };
  }

  factory GetProtocolsArgs.fromMap(Map<String, dynamic> map) {
    return GetProtocolsArgs(
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
      zoneId: map['zoneId'] == null ? null : pulumi.Output.create<String>(map['zoneId'] as String),
    );
  }
}

