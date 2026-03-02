// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessPolicyAssociationAccessScope {
  /// The namespaces to which the access scope applies when type is namespace.
  final pulumi.Input<List<String>>? namespaces;
  /// Valid values are `namespace` or `cluster`.
  final pulumi.Input<String> type;

  /// Creates a new [AccessPolicyAssociationAccessScope].
  /// [namespaces] The namespaces to which the access scope applies when type is namespace.
  /// [type] Valid values are `namespace` or `cluster`.
  AccessPolicyAssociationAccessScope({
    this.namespaces,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespaces': ?namespaces,
      'type': type,
    };
  }

  factory AccessPolicyAssociationAccessScope.fromMap(Map<String, dynamic> map) {
    return AccessPolicyAssociationAccessScope(
      namespaces: map['namespaces'] == null ? null : ((map['namespaces'] as List).cast<String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

