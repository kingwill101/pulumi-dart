// ignore_for_file: unused_element, unnecessary_cast


class GetChartRepositoriesRepository {
  /// The first ID of the resource.
  final String chartRepositoryId;
  /// The creation time of the resource.
  final String createTime;
  /// The ID of the Chart Repository.
  final String id;
  /// The ID of the Container Registry instance.
  final String instanceId;
  /// The name of the repository.
  final String repoName;
  /// The namespace to which the repository belongs.
  final String repoNamespaceName;
  /// The type of the repository. Valid values: `PUBLIC`,`PRIVATE`.
  final String repoType;
  /// The summary about the repository.
  final String summary;

  /// Creates a new [GetChartRepositoriesRepository].
  /// [chartRepositoryId] The first ID of the resource.
  /// [createTime] The creation time of the resource.
  /// [id] The ID of the Chart Repository.
  /// [instanceId] The ID of the Container Registry instance.
  /// [repoName] The name of the repository.
  /// [repoNamespaceName] The namespace to which the repository belongs.
  /// [repoType] The type of the repository. Valid values: `PUBLIC`,`PRIVATE`.
  /// [summary] The summary about the repository.
  GetChartRepositoriesRepository({
    required this.chartRepositoryId,
    required this.createTime,
    required this.id,
    required this.instanceId,
    required this.repoName,
    required this.repoNamespaceName,
    required this.repoType,
    required this.summary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chartRepositoryId': chartRepositoryId,
      'createTime': createTime,
      'id': id,
      'instanceId': instanceId,
      'repoName': repoName,
      'repoNamespaceName': repoNamespaceName,
      'repoType': repoType,
      'summary': summary,
    };
  }

  factory GetChartRepositoriesRepository.fromMap(Map<String, dynamic> map) {
    return GetChartRepositoriesRepository(
      chartRepositoryId: map['chartRepositoryId'] as String,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      instanceId: map['instanceId'] as String,
      repoName: map['repoName'] as String,
      repoNamespaceName: map['repoNamespaceName'] as String,
      repoType: map['repoType'] as String,
      summary: map['summary'] as String,
    );
  }
}

