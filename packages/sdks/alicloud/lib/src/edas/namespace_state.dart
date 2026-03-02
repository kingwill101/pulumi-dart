// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Namespace resources.
class NamespaceState {
  /// Specifies whether to enable remote debugging.
  final pulumi.Input<bool>? debugEnable;
  /// The description of the namespace, The description can be up to `128` characters in length.
  final pulumi.Input<String>? description;
  /// The ID of the namespace.
  /// - The ID of a custom namespace is in the `region ID:namespace identifier` format. An example is `cn-beijing:tdy218`.
  /// - The ID of the default namespace is in the `region ID` format. An example is cn-beijing.
  final pulumi.Input<String>? namespaceLogicalId;
  /// The name of the namespace, The name can be up to `63` characters in length.
  final pulumi.Input<String>? namespaceName;

  /// Creates a new [NamespaceState].
  /// [debugEnable] Specifies whether to enable remote debugging.
  /// [description] The description of the namespace, The description can be up to `128` characters in length.
  /// [namespaceLogicalId] The ID of the namespace.
  /// [namespaceName] The name of the namespace, The name can be up to `63` characters in length.
  NamespaceState({
    this.debugEnable,
    this.description,
    this.namespaceLogicalId,
    this.namespaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'debugEnable': ?debugEnable,
      'description': ?description,
      'namespaceLogicalId': ?namespaceLogicalId,
      'namespaceName': ?namespaceName,
    };
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      debugEnable: map['debugEnable'] == null ? null : (map['debugEnable']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      namespaceLogicalId: map['namespaceLogicalId'] == null ? null : (map['namespaceLogicalId']! as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName']! as String).input(),
    );
  }
}

