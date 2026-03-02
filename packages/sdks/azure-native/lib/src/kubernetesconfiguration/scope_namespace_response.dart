// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies that the scope of the extension is Namespace
class ScopeNamespaceResponse {
  /// Namespace where the extension will be created for an Namespace scoped extension.  If this namespace does not exist, it will be created
  final pulumi.Input<String>? targetNamespace;

  /// Creates a new [ScopeNamespaceResponse].
  /// [targetNamespace] Namespace where the extension will be created for an Namespace scoped extension.  If this namespace does not exist, it will be created
  ScopeNamespaceResponse({
    this.targetNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetNamespace': ?targetNamespace,
    };
  }

  factory ScopeNamespaceResponse.fromMap(Map<String, dynamic> map) {
    return ScopeNamespaceResponse(
      targetNamespace: map['targetNamespace'] == null ? null : (map['targetNamespace']! as String).input(),
    );
  }
}

