// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_get_environments_get_environments_args_doc}
/// Arguments for getEnvironments.
/// {@endtemplate}
/// {@macro pulumi_arms_get_environments_get_environments_args_doc}
class GetEnvironmentsArgs {
  /// The environment type. Valid values: `CS`, `ECS`, `Cloud`.
  final pulumi.Input<String>? environmentType;
  /// A list of ARMS Environment IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by ARMS Environment name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetEnvironmentsArgs].
  /// [environmentType] The environment type. Valid values: `CS`, `ECS`, `Cloud`.
  /// [ids] A list of ARMS Environment IDs.
  /// [nameRegex] A regex string to filter results by ARMS Environment name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] A mapping of tags to assign to the resource.
  GetEnvironmentsArgs({
    this.environmentType,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': ?environmentType,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
    };
  }

  factory GetEnvironmentsArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentsArgs(
      environmentType: map['environmentType'] == null ? null : (map['environmentType'] as String).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

