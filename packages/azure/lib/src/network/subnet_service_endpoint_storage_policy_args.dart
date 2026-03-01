// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_service_endpoint_storage_policy_definition.dart';

/// {@template pulumi_network_subnet_service_endpoint_storage_policy_subnet_service_endpoint_storage_policy_args_doc}
/// The set of arguments for SubnetServiceEndpointStoragePolicy.
/// {@endtemplate}
/// {@macro pulumi_network_subnet_service_endpoint_storage_policy_subnet_service_endpoint_storage_policy_args_doc}
class SubnetServiceEndpointStoragePolicyArgs {
  /// A `definition` block as defined below
  final pulumi.Input<List<SubnetServiceEndpointStoragePolicyDefinition>>? definitions;
  /// The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Subnet Service Endpoint Storage Policy. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SubnetServiceEndpointStoragePolicyArgs].
  /// [definitions] A `definition` block as defined below
  /// [location] The Azure Region where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  /// [name] The name which should be used for this Subnet Service Endpoint Storage Policy. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  /// [resourceGroupName] The name of the Resource Group where the Subnet Service Endpoint Storage Policy should exist. Changing this forces a new Subnet Service Endpoint Storage Policy to be created.
  /// [tags] A mapping of tags which should be assigned to the Subnet Service Endpoint Storage Policy.
  SubnetServiceEndpointStoragePolicyArgs({
    List<SubnetServiceEndpointStoragePolicyDefinition>? definitions,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      definitions = pulumi.Input.asOptionalInput<List<SubnetServiceEndpointStoragePolicyDefinition>>(definitions),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': ?pulumi.Input.mapOptionalInputValue<List<SubnetServiceEndpointStoragePolicyDefinition>, List<Map<String, dynamic>>>(definitions, (value) => pulumi.Input.encodeList<SubnetServiceEndpointStoragePolicyDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory SubnetServiceEndpointStoragePolicyArgs.fromMap(Map<String, dynamic> map) {
    return SubnetServiceEndpointStoragePolicyArgs(
      definitions: map['definitions'] == null ? null : pulumi.Input.decodeList<SubnetServiceEndpointStoragePolicyDefinition>(map['definitions'], (value) => SubnetServiceEndpointStoragePolicyDefinition.fromMap((value as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

