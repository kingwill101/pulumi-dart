// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_resource_manager_common_types_extended_location.dart';
import 'pipeline_group_properties.dart';

/// {@template pulumi_monitor_pipeline_group_args_doc}
/// The set of arguments for PipelineGroup.
/// {@endtemplate}
/// {@macro pulumi_monitor_pipeline_group_args_doc}
class PipelineGroupArgs {
  /// The complex type of the extended location.
  final pulumi.Input<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of pipeline group. The name is case insensitive.
  final pulumi.Input<String>? pipelineGroupName;
  /// The resource-specific properties for this resource.
  final pulumi.Input<PipelineGroupProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PipelineGroupArgs].
  /// [extendedLocation] The complex type of the extended location.
  /// [location] The geo-location where the resource lives
  /// [pipelineGroupName] The name of pipeline group. The name is case insensitive.
  /// [properties] The resource-specific properties for this resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  PipelineGroupArgs({
    pulumi.Output<AzureResourceManagerCommonTypesExtendedLocation>? extendedLocation,
    pulumi.Output<String>? location,
    pulumi.Output<String>? pipelineGroupName,
    pulumi.Output<PipelineGroupProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      extendedLocation = pulumi.Input.asOptionalInput<AzureResourceManagerCommonTypesExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      pipelineGroupName = pulumi.Input.asOptionalInput<String>(pipelineGroupName),
      properties = pulumi.Input.asOptionalInput<PipelineGroupProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<AzureResourceManagerCommonTypesExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'pipelineGroupName': ?pipelineGroupName,
      'properties': ?pulumi.Input.mapOptionalInputValue<PipelineGroupProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PipelineGroupArgs.fromMap(Map<String, dynamic> map) {
    return PipelineGroupArgs(
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<AzureResourceManagerCommonTypesExtendedLocation>(AzureResourceManagerCommonTypesExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      pipelineGroupName: map['pipelineGroupName'] == null ? null : pulumi.Output.create<String>(map['pipelineGroupName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<PipelineGroupProperties>(PipelineGroupProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

