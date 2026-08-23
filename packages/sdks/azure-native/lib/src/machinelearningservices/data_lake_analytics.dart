// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_analytics_schema_properties.dart';

/// A DataLakeAnalytics compute.
class DataLakeAnalytics {
  /// Location for the underlying compute
  final pulumi.Input<String>? computeLocation;
  /// The type of compute
  /// Expected value is 'DataLakeAnalytics'.
  final pulumi.Input<String> computeType;
  /// The description of the Machine Learning compute.
  final pulumi.Input<String>? description;
  /// Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  final pulumi.Input<bool>? disableLocalAuth;
  final pulumi.Input<DataLakeAnalyticsSchemaProperties>? properties;
  /// ARM resource id of the underlying compute
  final pulumi.Input<String>? resourceId;

  /// Creates a new [DataLakeAnalytics].
  /// [computeLocation] Location for the underlying compute
  /// [computeType] The type of compute
  /// [description] The description of the Machine Learning compute.
  /// [disableLocalAuth] Opt-out of local authentication and ensure customers can use only MSI and AAD exclusively for authentication.
  /// [properties] Optional.
  /// [resourceId] ARM resource id of the underlying compute
  const DataLakeAnalytics({
    this.computeLocation,
    required this.computeType,
    this.description,
    this.disableLocalAuth,
    this.properties,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeLocation': ?computeLocation,
      'computeType': computeType,
      'description': ?description,
      'disableLocalAuth': ?disableLocalAuth,
      'properties': ?pulumi.Input.mapOptionalInputValue<DataLakeAnalyticsSchemaProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceId': ?resourceId,
    };
  }

  factory DataLakeAnalytics.fromMap(Map<String, dynamic> map) {
    return DataLakeAnalytics(
      computeLocation: (() { final guardedValue = map['computeLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      computeType: pulumi.Input.fromValue(map['computeType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataLakeAnalyticsSchemaProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
