// ignore_for_file: unused_element, unnecessary_cast


/// ResourceInfoDefinition properties of Basic Rule. This defines the objects that represent the actions or topics, such as - method.Connect, method.Publish, etc.
class ResourceInfoDefinitionResponse {
  /// The type of action that the clients can perform on the broker: Connect, Publish or Subscribe.
  final String method;
  /// A list of topics or topic patterns that match the topics that the clients can publish or subscribe to. This subfield is required if the method is Publish or Subscribe.
  final List<String>? topics;

  /// Creates a new [ResourceInfoDefinitionResponse].
  /// [method] The type of action that the clients can perform on the broker: Connect, Publish or Subscribe.
  /// [topics] A list of topics or topic patterns that match the topics that the clients can publish or subscribe to. This subfield is required if the method is Publish or Subscribe.
  ResourceInfoDefinitionResponse({
    required this.method,
    this.topics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'topics': ?topics,
    };
  }

  factory ResourceInfoDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ResourceInfoDefinitionResponse(
      method: map['method'] as String,
      topics: map['topics'] == null ? null : (map['topics'] as List).cast<String>(),
    );
  }
}

