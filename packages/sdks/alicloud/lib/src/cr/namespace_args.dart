// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_cr_namespace_namespace_args_doc}
class NamespaceArgs {
  /// Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing.
  final pulumi.Input<bool> autoCreate;

  /// `PUBLIC` or `PRIVATE`, default repository visibility in this namespace.
  final pulumi.Input<String> defaultVisibility;

  /// Name of Container Registry namespace.
  final pulumi.Input<String>? name;

  /// Creates a new [NamespaceArgs].
  /// [autoCreate] Boolean, when it set to true, repositories are automatically created when pushing new images. If it set to false, you create repository for images before pushing.
  /// [defaultVisibility] `PUBLIC` or `PRIVATE`, default repository visibility in this namespace.
  /// [name] Name of Container Registry namespace.
  NamespaceArgs({
    required this.autoCreate,
    required this.defaultVisibility,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreate': autoCreate,
      'defaultVisibility': defaultVisibility,
      'name': ?name,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      autoCreate: pulumi.Input.fromValue(map['autoCreate'] as bool),
      defaultVisibility: pulumi.Input.fromValue(
        map['defaultVisibility'] as String,
      ),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
