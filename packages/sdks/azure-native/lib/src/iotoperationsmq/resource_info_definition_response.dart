// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceInfoDefinition properties of Basic Rule. This defines the objects that represent the actions or topics, such as - method.Connect, method.Publish, etc.
class ResourceInfoDefinitionResponse {
  /// The type of action that the clients can perform on the broker: Connect, Publish or Subscribe.
  final pulumi.Input<String> method;

  /// A list of topics or topic patterns that match the topics that the clients can publish or subscribe to. This subfield is required if the method is Publish or Subscribe.
  final pulumi.Input<List<String>>? topics;

  /// Creates a new [ResourceInfoDefinitionResponse].
  /// [method] The type of action that the clients can perform on the broker: Connect, Publish or Subscribe.
  /// [topics] A list of topics or topic patterns that match the topics that the clients can publish or subscribe to. This subfield is required if the method is Publish or Subscribe.
  ResourceInfoDefinitionResponse({required this.method, this.topics});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'method': method, 'topics': ?topics};
  }

  factory ResourceInfoDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ResourceInfoDefinitionResponse(
      method: pulumi.Input.fromValue(map['method'] as String),
      topics: (() {
        final guardedValue = map['topics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
