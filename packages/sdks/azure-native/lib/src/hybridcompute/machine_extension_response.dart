// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_extension_properties_response.dart';
import 'system_data_response.dart';

/// Describes a Machine Extension.
class MachineExtensionResponse {
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final pulumi.Input<String> id;

  /// The geo-location where the resource lives
  final pulumi.Input<String> location;

  /// The name of the resource
  final pulumi.Input<String> name;

  /// Describes Machine Extension Properties.
  final pulumi.Input<MachineExtensionPropertiesResponse>? properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

  /// Creates a new [MachineExtensionResponse].
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [properties] Describes Machine Extension Properties.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  MachineExtensionResponse({
    required this.id,
    required this.location,
    required this.name,
    this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            MachineExtensionPropertiesResponse,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'systemData':
          pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(
            systemData,
            (value) => value.toMap(),
          ),
      'tags': ?tags,
      'type': type,
    };
  }

  factory MachineExtensionResponse.fromMap(Map<String, dynamic> map) {
    return MachineExtensionResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MachineExtensionPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      systemData: pulumi.Input.fromValue(
        SystemDataResponse.fromMap(
          (map['systemData']! as Map).cast<String, dynamic>(),
        ),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
