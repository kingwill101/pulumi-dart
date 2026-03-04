// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetChartRepositoriesRepository {
  /// The first ID of the resource.
  final pulumi.Input<String> chartRepositoryId;

  /// The creation time of the resource.
  final pulumi.Input<String> createTime;

  /// The ID of the Chart Repository.
  final pulumi.Input<String> id;

  /// The ID of the Container Registry instance.
  final pulumi.Input<String> instanceId;

  /// The name of the repository.
  final pulumi.Input<String> repoName;

  /// The namespace to which the repository belongs.
  final pulumi.Input<String> repoNamespaceName;

  /// The type of the repository. Valid values: `PUBLIC`,`PRIVATE`.
  final pulumi.Input<String> repoType;

  /// The summary about the repository.
  final pulumi.Input<String> summary;

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
      chartRepositoryId: pulumi.Input.fromValue(
        map['chartRepositoryId'] as String,
      ),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      repoName: pulumi.Input.fromValue(map['repoName'] as String),
      repoNamespaceName: pulumi.Input.fromValue(
        map['repoNamespaceName'] as String,
      ),
      repoType: pulumi.Input.fromValue(map['repoType'] as String),
      summary: pulumi.Input.fromValue(map['summary'] as String),
    );
  }
}
