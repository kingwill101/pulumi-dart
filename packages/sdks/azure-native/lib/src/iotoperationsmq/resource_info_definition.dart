// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceInfoDefinition properties of Basic Rule. This defines the objects that represent the actions or topics, such as - method.Connect, method.Publish, etc.
class ResourceInfoDefinition {
  /// The type of action that the clients can perform on the broker: Connect, Publish or Subscribe.
  final pulumi.Input<dynamic> method;
  /// A list of topics or topic patterns that match the topics that the clients can publish or subscribe to. This subfield is required if the method is Publish or Subscribe.
  final pulumi.Input<List<String>?>? topics;

  /// Creates a new [ResourceInfoDefinition].
  /// [method] The type of action that the clients can perform on the broker: Connect, Publish or Subscribe.
  /// [topics] A list of topics or topic patterns that match the topics that the clients can publish or subscribe to. This subfield is required if the method is Publish or Subscribe.
  const ResourceInfoDefinition({
    required this.method,
    this.topics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'method': method,
      'topics': ?topics,
    };
  }

  factory ResourceInfoDefinition.fromMap(Map<String, dynamic> map) {
    return ResourceInfoDefinition(
      method: pulumi.Input.fromValue(map['method']),
      topics: (() { final guardedValue = map['topics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
