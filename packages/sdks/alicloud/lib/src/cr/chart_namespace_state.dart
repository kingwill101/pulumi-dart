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
    this.autoCreateRepo,
    this.defaultRepoType,
    this.instanceId,
    this.namespaceName,
  });

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
      autoCreateRepo: map['autoCreateRepo'] == null ? null : (map['autoCreateRepo']! as bool).input(),
      defaultRepoType: map['defaultRepoType'] == null ? null : (map['defaultRepoType']! as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId']! as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName']! as String).input(),
    );
  }
}

