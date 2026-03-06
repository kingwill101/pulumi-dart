// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eds_get_bundles_get_bundles_args_doc}
/// Arguments for getBundles.
/// {@endtemplate}
/// {@macro pulumi_eds_get_bundles_get_bundles_args_doc}
class GetBundlesArgs {
  final pulumi.Input<List<String>>? bundleIds;
  /// The bundle type of  the bundle. Valid values: `SYSTEM`,`CUSTOM`.
  final pulumi.Input<String>? bundleType;
  /// A list of Bundle IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Bundle name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetBundlesArgs].
  /// [bundleIds] Optional.
  /// [bundleType] The bundle type of  the bundle. Valid values: `SYSTEM`,`CUSTOM`.
  /// [ids] A list of Bundle IDs.
  /// [nameRegex] A regex string to filter results by Bundle name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetBundlesArgs({
    this.bundleIds,
    this.bundleType,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleIds': ?bundleIds,
      'bundleType': ?bundleType,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetBundlesArgs.fromMap(Map<String, dynamic> map) {
    return GetBundlesArgs(
      bundleIds: (() { final guardedValue = map['bundleIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bundleType: (() { final guardedValue = map['bundleType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

