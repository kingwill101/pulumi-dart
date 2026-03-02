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
    this.description,
    this.namespaceName,
    this.namespaceUid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'namespaceName': ?namespaceName,
      'namespaceUid': ?namespaceUid,
    };
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName'] as String).input(),
      namespaceUid: map['namespaceUid'] == null ? null : (map['namespaceUid'] as String).input(),
    );
  }
}

