// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetChartNamespacesNamespace {
  /// Indicates whether a repository is automatically created when an image is pushed to the namespace.
  final pulumi.Input<bool> autoCreateRepo;

  /// The ID of the namespace.
  final pulumi.Input<String> chartNamespaceId;

  /// The default repository type. Valid values: `PUBLIC`,`PRIVATE`.
  final pulumi.Input<String> defaultRepoType;

  /// The ID of the Chart Namespace.
  final pulumi.Input<String> id;

  /// The ID of the namespace.
  final pulumi.Input<String> instanceId;

  /// The name of the namespace.
  final pulumi.Input<String> namespaceName;

  /// Creates a new [GetChartNamespacesNamespace].
  /// [autoCreateRepo] Indicates whether a repository is automatically created when an image is pushed to the namespace.
  /// [chartNamespaceId] The ID of the namespace.
  /// [defaultRepoType] The default repository type. Valid values: `PUBLIC`,`PRIVATE`.
  /// [id] The ID of the Chart Namespace.
  /// [instanceId] The ID of the namespace.
  /// [namespaceName] The name of the namespace.
  GetChartNamespacesNamespace({
    required this.autoCreateRepo,
    required this.chartNamespaceId,
    required this.defaultRepoType,
    required this.id,
    required this.instanceId,
    required this.namespaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoCreateRepo': autoCreateRepo,
      'chartNamespaceId': chartNamespaceId,
      'defaultRepoType': defaultRepoType,
      'id': id,
      'instanceId': instanceId,
      'namespaceName': namespaceName,
    };
  }

  factory GetChartNamespacesNamespace.fromMap(Map<String, dynamic> map) {
    return GetChartNamespacesNamespace(
      autoCreateRepo: pulumi.Input.fromValue(map['autoCreateRepo'] as bool),
      chartNamespaceId: pulumi.Input.fromValue(
        map['chartNamespaceId'] as String,
      ),
      defaultRepoType: pulumi.Input.fromValue(map['defaultRepoType'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
    );
  }
}
