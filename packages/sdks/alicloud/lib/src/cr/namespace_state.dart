// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Namespace resources.
class NamespaceState {
  /// Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing.
  final pulumi.Input<bool>? autoCreate;
  /// `PUBLIC` or `PRIVATE`, default repository visibility in this namespace.
  final pulumi.Input<String>? defaultVisibility;
  /// Name of Container Registry namespace.
  final pulumi.Input<String>? name;

  /// Creates a new [NamespaceState].
  /// [autoCreate] Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing.
  /// [defaultVisibility] `PUBLIC` or `PRIVATE`, default repository visibility in this namespace.
  /// [name] Name of Container Registry namespace.
  NamespaceState({
    this.autoCreate,
    this.defaultVisibility,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreate': ?autoCreate,
      'defaultVisibility': ?defaultVisibility,
      'name': ?name,
    };
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      autoCreate: map['autoCreate'] == null ? null : (map['autoCreate'] as bool).input(),
      defaultVisibility: map['defaultVisibility'] == null ? null : (map['defaultVisibility'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

