// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentVersionsAgentVersionAttachedFunction {
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

  /// Creates a new [GetGenaiAgentVersionsAgentVersionAttachedFunction].
  /// [description] Description of the function
  /// [faasName] FaaS name of the function
  /// [faasNamespace] FaaS namespace of the function
  /// [isDeleted] Function is deleted
  /// [name] Name of the function
  GetGenaiAgentVersionsAgentVersionAttachedFunction({
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

  factory GetGenaiAgentVersionsAgentVersionAttachedFunction.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentVersionsAgentVersionAttachedFunction(
      description: map['description'] as String,
      faasName: map['faasName'] as String,
      faasNamespace: map['faasNamespace'] as String,
      isDeleted: map['isDeleted'] as bool,
      name: map['name'] as String,
    );
  }
}

