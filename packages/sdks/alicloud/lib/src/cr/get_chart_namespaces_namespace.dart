// ignore_for_file: unused_element, unnecessary_cast


class GetChartNamespacesNamespace {
  /// Indicates whether a repository is automatically created when an image is pushed to the namespace.
  final bool autoCreateRepo;
  /// The ID of the namespace.
  final String chartNamespaceId;
  /// The default repository type. Valid values: `PUBLIC`,`PRIVATE`.
  final String defaultRepoType;
  /// The ID of the Chart Namespace.
  final String id;
  /// The ID of the namespace.
  final String instanceId;
  /// The name of the namespace.
  final String namespaceName;

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
      autoCreateRepo: map['autoCreateRepo'] as bool,
      chartNamespaceId: map['chartNamespaceId'] as String,
      defaultRepoType: map['defaultRepoType'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      namespaceName: map['namespaceName'] as String,
    );
  }
}

