// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiAgentVersionsAgentVersionAttachedFunction {
  /// Description of the function
  final String description;
  /// FaaS name of the function
  final String faasName;
  /// FaaS namespace of the function
  final String faasNamespace;
  /// Function is deleted
  final bool isDeleted;
  /// Name of the function
  final String name;

  /// Creates a new [GetGradientaiAgentVersionsAgentVersionAttachedFunction].
  /// [description] Description of the function
  /// [faasName] FaaS name of the function
  /// [faasNamespace] FaaS namespace of the function
  /// [isDeleted] Function is deleted
  /// [name] Name of the function
  GetGradientaiAgentVersionsAgentVersionAttachedFunction({
    required this.description,
    required this.faasName,
    required this.faasNamespace,
    required this.isDeleted,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'faasName': faasName,
      'faasNamespace': faasNamespace,
      'isDeleted': isDeleted,
      'name': name,
    };
  }

  factory GetGradientaiAgentVersionsAgentVersionAttachedFunction.fromMap(Map<String, dynamic> map) {
    return GetGradientaiAgentVersionsAgentVersionAttachedFunction(
      description: map['description'] as String,
      faasName: map['faasName'] as String,
      faasNamespace: map['faasNamespace'] as String,
      isDeleted: map['isDeleted'] as bool,
      name: map['name'] as String,
    );
  }
}

