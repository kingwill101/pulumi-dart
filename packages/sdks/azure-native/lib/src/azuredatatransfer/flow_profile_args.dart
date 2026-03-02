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
  final pulumi.Input<String>? flowProfileName;
  /// The managed service identities assigned to this resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the pipeline on which to operate.
  final pulumi.Input<String> pipelineName;
  /// The set of configuration properties that define the behavior and rules of the FlowProfile.
  final pulumi.Input<FlowProfileProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FlowProfileArgs].
  /// [flowProfileName] The name of the FlowProfile resource to operate on. Must be 3 to 64 characters long and contain only alphanumeric characters or hyphens.
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [pipelineName] The name of the pipeline on which to operate.
  /// [properties] The set of configuration properties that define the behavior and rules of the FlowProfile.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  FlowProfileArgs({
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
      flowProfileName: map['flowProfileName'] == null ? null : (map['flowProfileName'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      pipelineName: (map['pipelineName'] as String).input(),
      properties: map['properties'] == null ? null : (FlowProfileProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

