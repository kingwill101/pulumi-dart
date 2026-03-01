// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enclave_endpoint_destination_rule.dart';

/// {@template pulumi_mission_enclave_endpoint_args_doc}
/// The set of arguments for EnclaveEndpoint.
/// {@endtemplate}
/// {@macro pulumi_mission_enclave_endpoint_args_doc}
class EnclaveEndpointArgs {
  /// The name of the Enclave Endpoint Resource
  final pulumi.Input<String>? enclaveEndpointName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Enclave Endpoint Rule Collection.
  final pulumi.Input<List<EnclaveEndpointDestinationRule>> ruleCollection;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the enclaveResource Resource
  final pulumi.Input<String> virtualEnclaveName;

  /// Creates a new [EnclaveEndpointArgs].
  /// [enclaveEndpointName] The name of the Enclave Endpoint Resource
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleCollection] Enclave Endpoint Rule Collection.
  /// [tags] Resource tags.
  /// [virtualEnclaveName] The name of the enclaveResource Resource
  EnclaveEndpointArgs({
    String? enclaveEndpointName,
    String? location,
    required String resourceGroupName,
    required List<EnclaveEndpointDestinationRule> ruleCollection,
    Map<String, String>? tags,
    required String virtualEnclaveName,
  }) :
      enclaveEndpointName = pulumi.Input.asOptionalInput<String>(enclaveEndpointName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleCollection = pulumi.Input.asInput<List<EnclaveEndpointDestinationRule>>(ruleCollection),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      virtualEnclaveName = pulumi.Input.asInput<String>(virtualEnclaveName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enclaveEndpointName': ?enclaveEndpointName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'ruleCollection': pulumi.Input.mapInputValue<List<EnclaveEndpointDestinationRule>, List<Map<String, dynamic>>>(ruleCollection, (value) => pulumi.Input.encodeList<EnclaveEndpointDestinationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'virtualEnclaveName': virtualEnclaveName,
    };
  }

  factory EnclaveEndpointArgs.fromMap(Map<String, dynamic> map) {
    return EnclaveEndpointArgs(
      enclaveEndpointName: map['enclaveEndpointName'] == null ? null : map['enclaveEndpointName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      ruleCollection: pulumi.Input.decodeList<EnclaveEndpointDestinationRule>(map['ruleCollection'], (value) => EnclaveEndpointDestinationRule.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      virtualEnclaveName: map['virtualEnclaveName'] as String,
    );
  }
}

