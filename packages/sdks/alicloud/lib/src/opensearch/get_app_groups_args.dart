// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_opensearch_get_app_groups_get_app_groups_args_doc}
/// Arguments for getAppGroups.
/// {@endtemplate}
/// {@macro pulumi_opensearch_get_app_groups_get_app_groups_args_doc}
class GetAppGroupsArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// A list of App Group IDs. Its element value is same as App Group Name.
  final pulumi.Input<List<String>>? ids;
  /// The Instance ID.
  final pulumi.Input<String>? instanceId;
  final pulumi.Input<String>? name;
  /// A regex string to filter results by App Group name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The Resource Group ID.
  final pulumi.Input<String>? resourceGroupId;
  /// Application type. Valid Values: `standard`, `enhanced`.
  final pulumi.Input<String>? type;

  /// Creates a new [GetAppGroupsArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [ids] A list of App Group IDs. Its element value is same as App Group Name.
  /// [instanceId] The Instance ID.
  /// [name] Optional.
  /// [nameRegex] A regex string to filter results by App Group name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [resourceGroupId] The Resource Group ID.
  /// [type] Application type. Valid Values: `standard`, `enhanced`.
  GetAppGroupsArgs({
    this.enableDetails,
    this.ids,
    this.instanceId,
    this.name,
    this.nameRegex,
    this.outputFile,
    this.resourceGroupId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'instanceId': ?instanceId,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'type': ?type,
    };
  }

  factory GetAppGroupsArgs.fromMap(Map<String, dynamic> map) {
    return GetAppGroupsArgs(
      enableDetails: map['enableDetails'] == null ? null : (map['enableDetails'] as bool).input(),
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

