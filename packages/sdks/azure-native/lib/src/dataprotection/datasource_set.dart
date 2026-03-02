// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_resource_properties.dart';

/// DatasourceSet details of datasource to be backed up
class DatasourceSet {
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
  /// Properties specific to data source set
  final pulumi.Input<DefaultResourceProperties>? resourceProperties;
  /// Resource Type of Datasource.
  final pulumi.Input<String>? resourceType;
  /// Uri of the resource.
  final pulumi.Input<String>? resourceUri;

  /// Creates a new [DatasourceSet].
  /// [datasourceType] DatasourceType of the resource.
  /// [objectType] Type of Datasource object, used to initialize the right inherited type
  /// [resourceID] Full ARM ID of the resource. For azure resources, this is ARM ID. For non azure resources, this will be the ID created by backup service via Fabric/Vault.
  /// [resourceLocation] Location of datasource.
  /// [resourceName] Unique identifier of the resource in the context of parent.
  /// [resourceProperties] Properties specific to data source set
  /// [resourceType] Resource Type of Datasource.
  /// [resourceUri] Uri of the resource.
  DatasourceSet({
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

  factory DatasourceSet.fromMap(Map<String, dynamic> map) {
    return DatasourceSet(
      datasourceType: map['datasourceType'] == null ? null : (map['datasourceType'] as String).input(),
      objectType: map['objectType'] == null ? null : (map['objectType'] as String).input(),
      resourceID: (map['resourceID'] as String).input(),
      resourceLocation: map['resourceLocation'] == null ? null : (map['resourceLocation'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      resourceProperties: map['resourceProperties'] == null ? null : (DefaultResourceProperties.fromMap((map['resourceProperties'] as Map).cast<String, dynamic>())).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      resourceUri: map['resourceUri'] == null ? null : (map['resourceUri'] as String).input(),
    );
  }
}

