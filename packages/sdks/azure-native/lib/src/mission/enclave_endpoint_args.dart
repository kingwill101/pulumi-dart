// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enclave_endpoint_destination_rule.dart';

/// {@template pulumi_mission_enclave_endpoint_args_doc}
/// The set of arguments for EnclaveEndpoint.
/// {@endtemplate}
/// {@macro pulumi_mission_enclave_endpoint_args_doc}
class EnclaveEndpointArgs {
  /// The name of the Enclave Endpoint Resource
  final pulumi.Input<String?>? enclaveEndpointName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Enclave Endpoint Rule Collection.
  final pulumi.Input<List<EnclaveEndpointDestinationRule>> ruleCollection;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The name of the enclaveResource Resource
  final pulumi.Input<String> virtualEnclaveName;

  /// Creates a new [EnclaveEndpointArgs].
  /// [enclaveEndpointName] The name of the Enclave Endpoint Resource
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleCollection] Enclave Endpoint Rule Collection.
  /// [tags] Resource tags.
  /// [virtualEnclaveName] The name of the enclaveResource Resource
  const EnclaveEndpointArgs({
    this.enclaveEndpointName,
    this.location,
    required this.resourceGroupName,
    required this.ruleCollection,
    this.tags,
    required this.virtualEnclaveName,
  });

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
      enclaveEndpointName: (() { final guardedValue = map['enclaveEndpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      ruleCollection: pulumi.Input.fromValue(pulumi.Input.decodeList<EnclaveEndpointDestinationRule>(map['ruleCollection']!, (value) => EnclaveEndpointDestinationRule.fromMap((value as Map).cast<String, dynamic>()))),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      virtualEnclaveName: pulumi.Input.fromValue(map['virtualEnclaveName'] as String),
    );
  }
}
