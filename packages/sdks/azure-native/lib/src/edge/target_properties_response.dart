// ignore_for_file: unused_element, unnecessary_cast

import 'deployment_status_response.dart';

/// Target Properties
class TargetPropertiesResponse {
  /// List of capabilities
  final List<String> capabilities;
  /// ArmId of Context
  final String contextId;
  /// Description of target
  final String description;
  /// Display name of target
  final String displayName;
  /// Hierarchy Level
  final String hierarchyLevel;
  /// Provisioning state of resource
  final String provisioningState;
  /// Scope of the target resource
  final String? solutionScope;
  /// State of resource
  final String? state;
  /// Status of target
  final DeploymentStatusResponse status;
  /// target spec
  final dynamic targetSpecification;

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
      'status': status.toMap(),
      'targetSpecification': targetSpecification,
    };
  }

  factory TargetPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return TargetPropertiesResponse(
      capabilities: (map['capabilities'] as List).cast<String>(),
      contextId: map['contextId'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      hierarchyLevel: map['hierarchyLevel'] as String,
      provisioningState: map['provisioningState'] as String,
      solutionScope: map['solutionScope'] == null ? null : map['solutionScope'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      status: DeploymentStatusResponse.fromMap((map['status'] as Map).cast<String, dynamic>()),
      targetSpecification: map['targetSpecification'],
    );
  }
}

