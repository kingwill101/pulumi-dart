// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cms_namespace_namespace_args_doc}
/// The set of arguments for Namespace.
/// {@endtemplate}
/// {@macro pulumi_cms_namespace_namespace_args_doc}
class NamespaceArgs {
  /// The description of the namespace.
  final pulumi.Input<String>? description;
  /// The name of the namespace. The name can contain lowercase letters, digits, and hyphens (-).
  final pulumi.Input<String> namespace;
  /// The data retention period. Default value: `cms.s1.3xlarge`. Valid values:
  /// - `cms.s1.large`: Data storage duration is 15 days.
  /// - `cms.s1.xlarge`: Data storage duration is 32 days.
  /// - `cms.s1.2xlarge`: Data storage duration 63 days.
  /// - `cms.s1.3xlarge`: Data storage duration 93 days.
  /// - `cms.s1.6xlarge`: Data storage duration 185 days.
  /// - `cms.s1.12xlarge`: Data storage duration 376 days.
  final pulumi.Input<String>? specification;

  /// Creates a new [NamespaceArgs].
  /// [description] The description of the namespace.
  /// [namespace] The name of the namespace. The name can contain lowercase letters, digits, and hyphens (-).
  /// [specification] The data retention period. Default value: `cms.s1.3xlarge`. Valid values:
  const NamespaceArgs({
    this.description,
    required this.namespace,
    this.specification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'namespace': namespace,
      'specification': ?specification,
    };
  }

  factory NamespaceArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

