// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_resource_properties.dart';

/// Datasource to be backed up
class Datasource {
  /// DatasourceType of the resource.
  final pulumi.Input<String>? datasourceType;
  /// Type of Datasource object, used to initialize the right inherited type
  final pulumi.Input<String>? objectType;
  /// Full ARM ID of the resource. For azure resources, this is ARM ID. For non azure resources, this will be the ID created by backup service via Fabric/Vault.
  final pulumi.Input<String> resourceID;
  /// Location of datasource.
  final pulumi.Input<String>? resourceLocation;
  /// Unique identifier of the resource in the context of parent.
  final pulumi.Input<String>? resourceName;
  /// Properties specific to data source
  final pulumi.Input<DefaultResourceProperties>? resourceProperties;
  /// Resource Type of Datasource.
  final pulumi.Input<String>? resourceType;
  /// Uri of the resource.
  final pulumi.Input<String>? resourceUri;

  /// Creates a new [Datasource].
  /// [datasourceType] DatasourceType of the resource.
  /// [objectType] Type of Datasource object, used to initialize the right inherited type
  /// [resourceID] Full ARM ID of the resource. For azure resources, this is ARM ID. For non azure resources, this will be the ID created by backup service via Fabric/Vault.
  /// [resourceLocation] Location of datasource.
  /// [resourceName] Unique identifier of the resource in the context of parent.
  /// [resourceProperties] Properties specific to data source
  /// [resourceType] Resource Type of Datasource.
  /// [resourceUri] Uri of the resource.
  const Datasource({
    this.datasourceType,
    this.objectType,
    required this.resourceID,
    this.resourceLocation,
    this.resourceName,
    this.resourceProperties,
    this.resourceType,
    this.resourceUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasourceType': ?datasourceType,
      'objectType': ?objectType,
      'resourceID': resourceID,
      'resourceLocation': ?resourceLocation,
      'resourceName': ?resourceName,
      'resourceProperties': ?pulumi.Input.mapOptionalInputValue<DefaultResourceProperties, Map<String, dynamic>>(resourceProperties, (value) => value.toMap()),
      'resourceType': ?resourceType,
      'resourceUri': ?resourceUri,
    };
  }

  factory Datasource.fromMap(Map<String, dynamic> map) {
    return Datasource(
      datasourceType: (() { final guardedValue = map['datasourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectType: (() { final guardedValue = map['objectType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceID: pulumi.Input.fromValue(map['resourceID'] as String),
      resourceLocation: (() { final guardedValue = map['resourceLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceName: (() { final guardedValue = map['resourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceProperties: (() { final guardedValue = map['resourceProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultResourceProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceUri: (() { final guardedValue = map['resourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
