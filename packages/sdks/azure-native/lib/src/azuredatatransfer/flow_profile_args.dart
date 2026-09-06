// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_profile_properties.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_azuredatatransfer_flow_profile_args_doc}
/// The set of arguments for FlowProfile.
/// {@endtemplate}
/// {@macro pulumi_azuredatatransfer_flow_profile_args_doc}
class FlowProfileArgs {
  /// The name of the FlowProfile resource to operate on. Must be 3 to 64 characters long and contain only alphanumeric characters or hyphens.
  final pulumi.Input<String?>? flowProfileName;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the pipeline on which to operate.
  final pulumi.Input<String> pipelineName;
  /// The set of configuration properties that define the behavior and rules of the FlowProfile.
  final pulumi.Input<FlowProfileProperties?>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [FlowProfileArgs].
  /// [flowProfileName] The name of the FlowProfile resource to operate on. Must be 3 to 64 characters long and contain only alphanumeric characters or hyphens.
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [pipelineName] The name of the pipeline on which to operate.
  /// [properties] The set of configuration properties that define the behavior and rules of the FlowProfile.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const FlowProfileArgs({
    this.flowProfileName,
    this.identity,
    this.location,
    required this.pipelineName,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'flowProfileName': ?flowProfileName,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'pipelineName': pipelineName,
      'properties': ?pulumi.Input.mapOptionalInputValue<FlowProfileProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory FlowProfileArgs.fromMap(Map<String, dynamic> map) {
    return FlowProfileArgs(
      flowProfileName: (() { final guardedValue = map['flowProfileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pipelineName: pulumi.Input.fromValue(map['pipelineName'] as String),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FlowProfileProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
