// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_scaling_policy_response.dart';
import 'container_code_package_properties_response.dart';
import 'diagnostics_ref_response.dart';
import 'network_ref_response.dart';

/// This type describes a service resource.
class ServiceResourceDescriptionResponse {
  /// Auto scaling policies
  final List<AutoScalingPolicyResponse>? autoScalingPolicies;
  /// Describes the set of code packages that forms the service. A code package describes the container and the properties for running it. All the code packages are started together on the same host and share the same context (network, process etc.).
  final List<ContainerCodePackagePropertiesResponse> codePackages;
  /// User readable description of the service.
  final String? description;
  /// Reference to sinks in DiagnosticsDescription.
  final DiagnosticsRefResponse? diagnostics;
  /// Describes the health state of an application resource.
  final String healthState;
  /// Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String? name;
  /// The names of the private networks that this service needs to be part of.
  final List<NetworkRefResponse>? networkRefs;
  /// The operation system required by the code in service.
  final String osType;
  /// State of the resource.
  final String provisioningState;
  /// The number of replicas of the service to create. Defaults to 1 if not specified.
  final int? replicaCount;
  /// Status of the service.
  final String status;
  /// Gives additional information about the current status of the service.
  final String statusDetails;
  /// The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  final String type;
  /// When the service's health state is not 'Ok', this additional details from service fabric Health Manager for the user to know why the service is marked unhealthy.
  final String unhealthyEvaluation;

  /// Creates a new [ServiceResourceDescriptionResponse].
  /// [autoScalingPolicies] Auto scaling policies
  /// [codePackages] Describes the set of code packages that forms the service. A code package describes the container and the properties for running it. All the code packages are started together on the same host and share the same context (network, process etc.).
  /// [description] User readable description of the service.
  /// [diagnostics] Reference to sinks in DiagnosticsDescription.
  /// [healthState] Describes the health state of an application resource.
  /// [id] Fully qualified identifier for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [networkRefs] The names of the private networks that this service needs to be part of.
  /// [osType] The operation system required by the code in service.
  /// [provisioningState] State of the resource.
  /// [replicaCount] The number of replicas of the service to create. Defaults to 1 if not specified.
  /// [status] Status of the service.
  /// [statusDetails] Gives additional information about the current status of the service.
  /// [type] The type of the resource. Ex- Microsoft.Compute/virtualMachines or Microsoft.Storage/storageAccounts.
  /// [unhealthyEvaluation] When the service's health state is not 'Ok', this additional details from service fabric Health Manager for the user to know why the service is marked unhealthy.
  ServiceResourceDescriptionResponse({
    this.autoScalingPolicies,
    required this.codePackages,
    this.description,
    this.diagnostics,
    required this.healthState,
    required this.id,
    this.name,
    this.networkRefs,
    required this.osType,
    required this.provisioningState,
    this.replicaCount,
    required this.status,
    required this.statusDetails,
    required this.type,
    required this.unhealthyEvaluation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoScalingPolicies': ?autoScalingPolicies == null ? null : pulumi.Input.encodeList<AutoScalingPolicyResponse, Map<String, dynamic>>(autoScalingPolicies!, (value) => value.toMap()),
      'codePackages': pulumi.Input.encodeList<ContainerCodePackagePropertiesResponse, Map<String, dynamic>>(codePackages, (value) => value.toMap()),
      'description': ?description,
      'diagnostics': ?diagnostics == null ? null : diagnostics!.toMap(),
      'healthState': healthState,
      'id': id,
      'name': ?name,
      'networkRefs': ?networkRefs == null ? null : pulumi.Input.encodeList<NetworkRefResponse, Map<String, dynamic>>(networkRefs!, (value) => value.toMap()),
      'osType': osType,
      'provisioningState': provisioningState,
      'replicaCount': ?replicaCount,
      'status': status,
      'statusDetails': statusDetails,
      'type': type,
      'unhealthyEvaluation': unhealthyEvaluation,
    };
  }

  factory ServiceResourceDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return ServiceResourceDescriptionResponse(
      autoScalingPolicies: map['autoScalingPolicies'] == null ? null : pulumi.Input.decodeList<AutoScalingPolicyResponse>(map['autoScalingPolicies'], (value) => AutoScalingPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      codePackages: pulumi.Input.decodeList<ContainerCodePackagePropertiesResponse>(map['codePackages'], (value) => ContainerCodePackagePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      diagnostics: map['diagnostics'] == null ? null : DiagnosticsRefResponse.fromMap((map['diagnostics'] as Map).cast<String, dynamic>()),
      healthState: map['healthState'] as String,
      id: map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      networkRefs: map['networkRefs'] == null ? null : pulumi.Input.decodeList<NetworkRefResponse>(map['networkRefs'], (value) => NetworkRefResponse.fromMap((value as Map).cast<String, dynamic>())),
      osType: map['osType'] as String,
      provisioningState: map['provisioningState'] as String,
      replicaCount: map['replicaCount'] == null ? null : map['replicaCount'] as int,
      status: map['status'] as String,
      statusDetails: map['statusDetails'] as String,
      type: map['type'] as String,
      unhealthyEvaluation: map['unhealthyEvaluation'] as String,
    );
  }
}

