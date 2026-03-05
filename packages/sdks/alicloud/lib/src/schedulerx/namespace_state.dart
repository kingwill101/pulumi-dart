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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceUid: (() { final guardedValue = map['namespaceUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

