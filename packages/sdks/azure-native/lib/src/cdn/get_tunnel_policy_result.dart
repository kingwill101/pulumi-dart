// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activated_resource_reference_response.dart';
import 'resource_reference_response.dart';
import 'system_data_response.dart';

/// Result data returned by getTunnelPolicy.
class GetTunnelPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String deploymentStatus;
  /// Domains referenced by this tunnel policy.
  final List<ActivatedResourceReferenceResponse> domains;
  /// Resource ID.
  final String id;
  /// Resource name.
  final String name;
  /// Provisioning status
  final String provisioningState;
  /// Read only system data
  final SystemDataResponse systemData;
  /// Target Groups referenced by this tunnel policy.
  final List<ResourceReferenceResponse>? targetGroups;
  /// Protocol this tunnel will use for allowing traffic to backends.
  final String? tunnelType;
  /// Resource type.
  final String type;

  /// Creates a new [GetTunnelPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deploymentStatus] Required.
  /// [domains] Domains referenced by this tunnel policy.
  /// [id] Resource ID.
  /// [name] Resource name.
  /// [provisioningState] Provisioning status
  /// [systemData] Read only system data
  /// [targetGroups] Target Groups referenced by this tunnel policy.
  /// [tunnelType] Protocol this tunnel will use for allowing traffic to backends.
  /// [type] Resource type.
  const GetTunnelPolicyResult({
    required this.azureApiVersion,
    required this.deploymentStatus,
    required this.domains,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.targetGroups,
    this.tunnelType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'deploymentStatus': deploymentStatus,
      'domains': pulumi.Input.encodeList<ActivatedResourceReferenceResponse, Map<String, dynamic>>(domains, (value) => value.toMap()),
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'targetGroups': ?(() { final guardedValue = targetGroups; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceReferenceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tunnelType': ?tunnelType,
      'type': type,
    };
  }

  factory GetTunnelPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetTunnelPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      deploymentStatus: map['deploymentStatus'] as String,
      domains: pulumi.Input.decodeList<ActivatedResourceReferenceResponse>(map['domains']!, (value) => ActivatedResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      targetGroups: (() { final guardedValue = map['targetGroups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceReferenceResponse>(guardedValue, (value) => ResourceReferenceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      tunnelType: (() { final guardedValue = map['tunnelType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

