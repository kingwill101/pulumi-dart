// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'horizon_db_parameter_group_properties.dart';

/// {@template pulumi_horizondb_horizon_db_parameter_group_args_doc}
/// The set of arguments for HorizonDbParameterGroup.
/// {@endtemplate}
/// {@macro pulumi_horizondb_horizon_db_parameter_group_args_doc}
class HorizonDbParameterGroupArgs {
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the HorizonDB parameter group.
  final pulumi.Input<String>? parameterGroupName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<HorizonDbParameterGroupProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [HorizonDbParameterGroupArgs].
  /// [location] The geo-location where the resource lives
  /// [parameterGroupName] The name of the HorizonDB parameter group.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const HorizonDbParameterGroupArgs({
    this.location,
    this.parameterGroupName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'parameterGroupName': ?parameterGroupName,
      'properties': ?pulumi.Input.mapOptionalInputValue<HorizonDbParameterGroupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory HorizonDbParameterGroupArgs.fromMap(Map<String, dynamic> map) {
    return HorizonDbParameterGroupArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterGroupName: (() { final guardedValue = map['parameterGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HorizonDbParameterGroupProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
