// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cr_chart_repository_chart_repository_args_doc}
/// The set of arguments for ChartRepository.
/// {@endtemplate}
/// {@macro pulumi_cr_chart_repository_chart_repository_args_doc}
class ChartRepositoryArgs {
  /// The ID of the Container Registry instance.
  final pulumi.Input<String> instanceId;
  /// The name of the repository that you want to create.
  final pulumi.Input<String> repoName;
  /// The namespace to which the repository belongs.
  final pulumi.Input<String> repoNamespaceName;
  /// The default repository type. Valid values: `PUBLIC`,`PRIVATE`.
  final pulumi.Input<String>? repoType;
  /// The summary about the repository.
  final pulumi.Input<String>? summary;

  /// Creates a new [ChartRepositoryArgs].
  /// [instanceId] The ID of the Container Registry instance.
  /// [repoName] The name of the repository that you want to create.
  /// [repoNamespaceName] The namespace to which the repository belongs.
  /// [repoType] The default repository type. Valid values: `PUBLIC`,`PRIVATE`.
  /// [summary] The summary about the repository.
  ChartRepositoryArgs({
    required String instanceId,
    required String repoName,
    required String repoNamespaceName,
    String? repoType,
    String? summary,
  }) :
      instanceId = pulumi.Input.asInput<String>(instanceId),
      repoName = pulumi.Input.asInput<String>(repoName),
      repoNamespaceName = pulumi.Input.asInput<String>(repoNamespaceName),
      repoType = pulumi.Input.asOptionalInput<String>(repoType),
      summary = pulumi.Input.asOptionalInput<String>(summary);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'repoName': repoName,
      'repoNamespaceName': repoNamespaceName,
      'repoType': ?repoType,
      'summary': ?summary,
    };
  }

  factory ChartRepositoryArgs.fromMap(Map<String, dynamic> map) {
    return ChartRepositoryArgs(
      instanceId: map['instanceId'] as String,
      repoName: map['repoName'] as String,
      repoNamespaceName: map['repoNamespaceName'] as String,
      repoType: map['repoType'] == null ? null : map['repoType'] as String,
      summary: map['summary'] == null ? null : map['summary'] as String,
    );
  }
}

