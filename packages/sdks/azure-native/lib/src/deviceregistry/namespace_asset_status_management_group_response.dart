// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_asset_status_management_action_response.dart';

/// Defines the asset status management group properties.
class NamespaceAssetStatusManagementGroupResponse {
  /// Array of action statuses that describe the status of each action.
  final pulumi.Input<List<NamespaceAssetStatusManagementActionResponse>> actions;
  /// The name of the management group. Must be unique within the status.managementGroups array. This name is used to correlate between the spec and status event information.
  final pulumi.Input<String> name;

  /// Creates a new [NamespaceAssetStatusManagementGroupResponse].
  /// [actions] Array of action statuses that describe the status of each action.
  /// [name] The name of the management group. Must be unique within the status.managementGroups array. This name is used to correlate between the spec and status event information.
  NamespaceAssetStatusManagementGroupResponse({
    required this.actions,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<NamespaceAssetStatusManagementActionResponse>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<NamespaceAssetStatusManagementActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory NamespaceAssetStatusManagementGroupResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceAssetStatusManagementGroupResponse(
      actions: (pulumi.Input.decodeList<NamespaceAssetStatusManagementActionResponse>(map['actions'], (value) => NamespaceAssetStatusManagementActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: (map['name'] as String).input(),
    );
  }
}

