// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_chart_namespace_chart_namespace_args_doc}
/// The set of arguments for ChartNamespace.
/// {@endtemplate}
/// {@macro pulumi_cr_chart_namespace_chart_namespace_args_doc}
class ChartNamespaceArgs {
  /// Specifies whether to automatically create repositories in the namespace. Valid values:
  final pulumi.Input<bool>? autoCreateRepo;
  /// DefaultRepoType. Valid values: `PRIVATE`, `PUBLIC`.
  final pulumi.Input<String>? defaultRepoType;
  /// The ID of the Container Registry instance.
  final pulumi.Input<String> instanceId;
  /// The name of the namespace that you want to create.
  final pulumi.Input<String> namespaceName;

  /// Creates a new [ChartNamespaceArgs].
  /// [autoCreateRepo] Specifies whether to automatically create repositories in the namespace. Valid values:
  /// [defaultRepoType] DefaultRepoType. Valid values: `PRIVATE`, `PUBLIC`.
  /// [instanceId] The ID of the Container Registry instance.
  /// [namespaceName] The name of the namespace that you want to create.
  ChartNamespaceArgs({
    this.autoCreateRepo,
    this.defaultRepoType,
    required this.instanceId,
    required this.namespaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateRepo': ?autoCreateRepo,
      'defaultRepoType': ?defaultRepoType,
      'instanceId': instanceId,
      'namespaceName': namespaceName,
    };
  }

  factory ChartNamespaceArgs.fromMap(Map<String, dynamic> map) {
    return ChartNamespaceArgs(
      autoCreateRepo: (() { final guardedValue = map['autoCreateRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      defaultRepoType: (() { final guardedValue = map['defaultRepoType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
    );
  }
}

