// ignore_for_file: unused_element, unnecessary_cast

import 'tag_inheritance_properties_response.dart';

/// Result data returned by getTagInheritanceSetting.
class GetTagInheritanceSettingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Specifies the kind of settings.
  /// Expected value is 'taginheritance'.
  final String kind;
  /// The name of the resource
  final String name;
  /// The properties of the tag inheritance setting.
  final TagInheritancePropertiesResponse properties;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetTagInheritanceSettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kind] Specifies the kind of settings.
  /// [name] The name of the resource
  /// [properties] The properties of the tag inheritance setting.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetTagInheritanceSettingResult({
    required this.azureApiVersion,
    required this.id,
    required this.kind,
    required this.name,
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'kind': kind,
      'name': name,
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory GetTagInheritanceSettingResult.fromMap(Map<String, dynamic> map) {
    return GetTagInheritanceSettingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      properties: TagInheritancePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

