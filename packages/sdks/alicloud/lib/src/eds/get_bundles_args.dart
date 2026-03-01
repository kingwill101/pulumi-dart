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
    pulumi.Output<List<String>>? bundleIds,
    pulumi.Output<String>? bundleType,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
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
      bundleIds: map['bundleIds'] == null ? null : pulumi.Output.create<List<String>>((map['bundleIds'] as List).cast<String>()),
      bundleType: map['bundleType'] == null ? null : pulumi.Output.create<String>(map['bundleType'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

