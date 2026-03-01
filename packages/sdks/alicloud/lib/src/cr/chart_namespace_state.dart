// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ChartNamespace resources.
class ChartNamespaceState {
  /// Specifies whether to automatically create repositories in the namespace. Valid values:
  final pulumi.Input<bool>? autoCreateRepo;
  /// DefaultRepoType. Valid values: `PRIVATE`, `PUBLIC`.
  final pulumi.Input<String>? defaultRepoType;
  /// The ID of the Container Registry instance.
  final pulumi.Input<String>? instanceId;
  /// The name of the namespace that you want to create.
  final pulumi.Input<String>? namespaceName;

  /// Creates a new [ChartNamespaceState].
  /// [autoCreateRepo] Specifies whether to automatically create repositories in the namespace. Valid values:
  /// [defaultRepoType] DefaultRepoType. Valid values: `PRIVATE`, `PUBLIC`.
  /// [instanceId] The ID of the Container Registry instance.
  /// [namespaceName] The name of the namespace that you want to create.
  ChartNamespaceState({
    pulumi.Output<bool>? autoCreateRepo,
    pulumi.Output<String>? defaultRepoType,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? namespaceName,
  }) :
      autoCreateRepo = pulumi.Input.asOptionalInput<bool>(autoCreateRepo),
      defaultRepoType = pulumi.Input.asOptionalInput<String>(defaultRepoType),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateRepo': ?autoCreateRepo,
      'defaultRepoType': ?defaultRepoType,
      'instanceId': ?instanceId,
      'namespaceName': ?namespaceName,
    };
  }

  factory ChartNamespaceState.fromMap(Map<String, dynamic> map) {
    return ChartNamespaceState(
      autoCreateRepo: map['autoCreateRepo'] == null ? null : pulumi.Output.create<bool>(map['autoCreateRepo'] as bool),
      defaultRepoType: map['defaultRepoType'] == null ? null : pulumi.Output.create<String>(map['defaultRepoType'] as String),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
    );
  }
}

