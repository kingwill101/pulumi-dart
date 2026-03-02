// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_prometheis_get_prometheis_args_doc}
/// Arguments for getPrometheis.
/// {@endtemplate}
/// {@macro pulumi_arms_get_prometheis_get_prometheis_args_doc}
class GetPrometheisArgs {
  /// Whether to query details about the instance.
  final pulumi.Input<bool>? enableDetails;
  /// A list of Prometheus IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Prometheus name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetPrometheisArgs].
  /// [enableDetails] Whether to query details about the instance.
  /// [ids] A list of Prometheus IDs.
  /// [nameRegex] A regex string to filter results by Prometheus name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] A mapping of tags to assign to the resource.
  GetPrometheisArgs({
    this.enableDetails,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetPrometheisArgs.fromMap(Map<String, dynamic> map) {
    return GetPrometheisArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails']! as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

