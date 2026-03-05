// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KvNamespace resources.
class KvNamespaceState {
  /// The description of the namespace.
  final pulumi.Input<String>? description;
  /// The name of the namespace.
  final pulumi.Input<String>? kvNamespace;
  /// The status of the namespace.
  final pulumi.Input<String>? status;

  /// Creates a new [KvNamespaceState].
  /// [description] The description of the namespace.
  /// [kvNamespace] The name of the namespace.
  /// [status] The status of the namespace.
  KvNamespaceState({
    this.description,
    this.kvNamespace,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'kvNamespace': ?kvNamespace,
      'status': ?status,
    };
  }

  factory KvNamespaceState.fromMap(Map<String, dynamic> map) {
    return KvNamespaceState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kvNamespace: (() { final guardedValue = map['kvNamespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

