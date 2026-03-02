// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KvNamespace resources.
class KvNamespaceState {
  /// Namespace description information
  final pulumi.Input<String>? description;
  /// Namespace name. The name can contain letters, digits, hyphens (-), and underscores (_).
  final pulumi.Input<String>? namespace;
  /// The status of the resource
  final pulumi.Input<String>? status;

  /// Creates a new [KvNamespaceState].
  /// [description] Namespace description information
  /// [namespace] Namespace name. The name can contain letters, digits, hyphens (-), and underscores (_).
  /// [status] The status of the resource
  KvNamespaceState({
    this.description,
    this.namespace,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'namespace': ?namespace,
      'status': ?status,
    };
  }

  factory KvNamespaceState.fromMap(Map<String, dynamic> map) {
    return KvNamespaceState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

