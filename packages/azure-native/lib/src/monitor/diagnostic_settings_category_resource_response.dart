// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// The diagnostic settings category resource.
class DiagnosticSettingsCategoryResourceResponse {
  /// the collection of what category groups are supported.
  final List<String>? categoryGroups;
  /// The type of the diagnostic settings category.
  final String? categoryType;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The system metadata related to this resource.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [DiagnosticSettingsCategoryResourceResponse].
  /// [categoryGroups] the collection of what category groups are supported.
  /// [categoryType] The type of the diagnostic settings category.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [systemData] The system metadata related to this resource.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  DiagnosticSettingsCategoryResourceResponse({
    this.categoryGroups,
    this.categoryType,
    required this.id,
    required this.name,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryGroups': ?categoryGroups,
      'categoryType': ?categoryType,
      'id': id,
      'name': name,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory DiagnosticSettingsCategoryResourceResponse.fromMap(Map<String, dynamic> map) {
    return DiagnosticSettingsCategoryResourceResponse(
      categoryGroups: map['categoryGroups'] == null ? null : (map['categoryGroups'] as List).cast<String>(),
      categoryType: map['categoryType'] == null ? null : map['categoryType'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

