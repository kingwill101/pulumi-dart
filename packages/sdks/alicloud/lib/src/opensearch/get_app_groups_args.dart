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
      enableDetails: (() {
        final guardedValue = map['enableDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
