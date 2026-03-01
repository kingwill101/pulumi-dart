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
  GetBundlesArgs({
    List<String>? bundleIds,
    String? bundleType,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      bundleIds = pulumi.Input.asOptionalInput<List<String>>(bundleIds),
      bundleType = pulumi.Input.asOptionalInput<String>(bundleType),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      bundleIds: map['bundleIds'] == null ? null : (map['bundleIds'] as List).cast<String>(),
      bundleType: map['bundleType'] == null ? null : map['bundleType'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

