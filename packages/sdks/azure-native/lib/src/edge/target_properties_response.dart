// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_status_response.dart';

/// Target Properties
class TargetPropertiesResponse {
  /// List of capabilities
  final pulumi.Input<List<String>> capabilities;
  /// ArmId of Context
  final pulumi.Input<String> contextId;
  /// Description of target
  final pulumi.Input<String> description;
  /// Display name of target
  final pulumi.Input<String> displayName;
  /// Hierarchy Level
  final pulumi.Input<String> hierarchyLevel;
  /// Provisioning state of resource
  final pulumi.Input<String> provisioningState;
  /// Scope of the target resource
  final pulumi.Input<String>? solutionScope;
  /// State of resource
  final pulumi.Input<String>? state;
  /// Status of target
  final pulumi.Input<DeploymentStatusResponse> status;
  /// target spec
  final pulumi.Input<dynamic> targetSpecification;

  /// Creates a new [TargetPropertiesResponse].
  /// [capabilities] List of capabilities
  /// [contextId] ArmId of Context
  /// [description] Description of target
  /// [displayName] Display name of target
  /// [hierarchyLevel] Hierarchy Level
  /// [provisioningState] Provisioning state of resource
  /// [solutionScope] Scope of the target resource
  /// [state] State of resource
  /// [status] Status of target
  /// [targetSpecification] target spec
  TargetPropertiesResponse({
    required this.capabilities,
    required this.contextId,
    required this.description,
    required this.displayName,
    required this.hierarchyLevel,
    required this.provisioningState,
    this.solutionScope,
    this.state,
    required this.status,
    required this.targetSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'contextId': contextId,
      'description': description,
      'displayName': displayName,
      'hierarchyLevel': hierarchyLevel,
      'provisioningState': provisioningState,
      'solutionScope': ?solutionScope,
      'state': ?state,
      'status': pulumi.Input.mapInputValue<DeploymentStatusResponse, Map<String, dynamic>>(status, (value) => value.toMap()),
      'targetSpecification': targetSpecification,
    };
  }

  factory TargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TargetPropertiesResponse(
      capabilities: ((map['capabilities'] as List).cast<String>()).input(),
      contextId: (map['contextId'] as String).input(),
      description: (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      hierarchyLevel: (map['hierarchyLevel'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      solutionScope: map['solutionScope'] == null ? null : (map['solutionScope'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      status: (DeploymentStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
      targetSpecification: (map['targetSpecification']).input(),
    );
  }
}

