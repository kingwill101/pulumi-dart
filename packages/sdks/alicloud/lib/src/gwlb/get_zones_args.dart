// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gwlb_get_zones_get_zones_args_doc}
/// Arguments for getZones.
/// {@endtemplate}
/// {@macro pulumi_gwlb_get_zones_get_zones_args_doc}
class GetZonesArgs {
  /// The supported language. Valid values:
  /// - **zh-CN**: Chinese
  /// - **en-US** (default): English
  /// - **ja**: Japanese
  final pulumi.Input<String>? acceptLanguage;
  /// A list of Zone IDs.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetZonesArgs].
  /// [acceptLanguage] The supported language. Valid values:
  /// [ids] A list of Zone IDs.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetZonesArgs({
    this.acceptLanguage,
    this.ids,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptLanguage': ?acceptLanguage,
      'ids': ?ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetZonesArgs(
      acceptLanguage: map['acceptLanguage'] == null ? null : (map['acceptLanguage'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
    );
  }
}

