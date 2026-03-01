// ignore_for_file: unused_element, unnecessary_cast


/// Target Properties
class TargetProperties {
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
  /// Scope of the target resource
  final String? solutionScope;
  /// State of resource
  final String? state;
  /// target spec
  final dynamic targetSpecification;

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
      capabilities: (map['capabilities'] as List).cast<String>(),
      contextId: map['contextId'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      hierarchyLevel: map['hierarchyLevel'] as String,
      solutionScope: map['solutionScope'] == null ? null : map['solutionScope'] as String,
      state: map['state'] == null ? null : map['state'] as String,
      targetSpecification: map['targetSpecification'],
    );
  }
}

