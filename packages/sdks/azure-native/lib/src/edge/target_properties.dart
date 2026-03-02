// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Target Properties
class TargetProperties {
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
  /// Scope of the target resource
  final pulumi.Input<String>? solutionScope;
  /// State of resource
  final pulumi.Input<String>? state;
  /// target spec
  final pulumi.Input<dynamic> targetSpecification;

  /// Creates a new [TargetProperties].
  /// [capabilities] List of capabilities
  /// [contextId] ArmId of Context
  /// [description] Description of target
  /// [displayName] Display name of target
  /// [hierarchyLevel] Hierarchy Level
  /// [solutionScope] Scope of the target resource
  /// [state] State of resource
  /// [targetSpecification] target spec
  TargetProperties({
    required this.capabilities,
    required this.contextId,
    required this.description,
    required this.displayName,
    required this.hierarchyLevel,
    this.solutionScope,
    this.state,
    required this.targetSpecification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'contextId': contextId,
      'description': description,
      'displayName': displayName,
      'hierarchyLevel': hierarchyLevel,
      'solutionScope': ?solutionScope,
      'state': ?state,
      'targetSpecification': targetSpecification,
    };
  }

  factory TargetProperties.fromMap(Map<String, dynamic> map) {
    return TargetProperties(
      capabilities: ((map['capabilities'] as List).cast<String>()).input(),
      contextId: (map['contextId'] as String).input(),
      description: (map['description'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      hierarchyLevel: (map['hierarchyLevel'] as String).input(),
      solutionScope: map['solutionScope'] == null ? null : (map['solutionScope']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      targetSpecification: (map['targetSpecification']).input(),
    );
  }
}

