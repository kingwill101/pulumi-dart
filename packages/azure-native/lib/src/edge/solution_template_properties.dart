// ignore_for_file: unused_element, unnecessary_cast


/// Solution Template Properties
class SolutionTemplateProperties {
  /// List of capabilities
  final List<String> capabilities;
  /// Description of Solution template
  final String description;
  /// Flag to enable external validation
  final bool? enableExternalValidation;
  /// State of resource
  final String? state;

  /// Creates a new [SolutionTemplateProperties].
  /// [capabilities] List of capabilities
  /// [description] Description of Solution template
  /// [enableExternalValidation] Flag to enable external validation
  /// [state] State of resource
  SolutionTemplateProperties({
    required this.capabilities,
    required this.description,
    this.enableExternalValidation,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'description': description,
      'enableExternalValidation': ?enableExternalValidation,
      'state': ?state,
    };
  }

  factory SolutionTemplateProperties.fromMap(Map<String, dynamic> map) {
    return SolutionTemplateProperties(
      capabilities: (map['capabilities'] as List).cast<String>(),
      description: map['description'] as String,
      enableExternalValidation: map['enableExternalValidation'] == null ? null : map['enableExternalValidation'] as bool,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

