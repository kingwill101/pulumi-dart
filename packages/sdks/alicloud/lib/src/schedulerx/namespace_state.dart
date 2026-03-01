// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Namespace resources.
class NamespaceState {
  /// Namespace description.
  final pulumi.Input<String>? description;
  /// Namespace name.
  final pulumi.Input<String>? namespaceName;
  /// namespace uid
  final pulumi.Input<String>? namespaceUid;

  /// Creates a new [NamespaceState].
  /// [description] Namespace description.
  /// [namespaceName] Namespace name.
  /// [namespaceUid] namespace uid
  NamespaceState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? namespaceUid,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      namespaceUid = pulumi.Input.asOptionalInput<String>(namespaceUid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'namespaceName': ?namespaceName,
      'namespaceUid': ?namespaceUid,
    };
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      namespaceUid: map['namespaceUid'] == null ? null : pulumi.Output.create<String>(map['namespaceUid'] as String),
    );
  }
}

