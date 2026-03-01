// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ChartRepository resources.
class ChartRepositoryState {
  /// The ID of the Container Registry instance.
  final pulumi.Input<String>? instanceId;
  /// The name of the repository that you want to create.
  final pulumi.Input<String>? repoName;
  /// The namespace to which the repository belongs.
  final pulumi.Input<String>? repoNamespaceName;
  /// The default repository type. Valid values: `PUBLIC`,`PRIVATE`.
  final pulumi.Input<String>? repoType;
  /// The summary about the repository.
  final pulumi.Input<String>? summary;

  /// Creates a new [ChartRepositoryState].
  /// [instanceId] The ID of the Container Registry instance.
  /// [repoName] The name of the repository that you want to create.
  /// [repoNamespaceName] The namespace to which the repository belongs.
  /// [repoType] The default repository type. Valid values: `PUBLIC`,`PRIVATE`.
  /// [summary] The summary about the repository.
  ChartRepositoryState({
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? repoName,
    pulumi.Output<String>? repoNamespaceName,
    pulumi.Output<String>? repoType,
    pulumi.Output<String>? summary,
  }) :
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      repoName = pulumi.Input.asOptionalInput<String>(repoName),
      repoNamespaceName = pulumi.Input.asOptionalInput<String>(repoNamespaceName),
      repoType = pulumi.Input.asOptionalInput<String>(repoType),
      summary = pulumi.Input.asOptionalInput<String>(summary);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': ?instanceId,
      'repoName': ?repoName,
      'repoNamespaceName': ?repoNamespaceName,
      'repoType': ?repoType,
      'summary': ?summary,
    };
  }

  factory ChartRepositoryState.fromMap(Map<String, dynamic> map) {
    return ChartRepositoryState(
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      repoName: map['repoName'] == null ? null : pulumi.Output.create<String>(map['repoName'] as String),
      repoNamespaceName: map['repoNamespaceName'] == null ? null : pulumi.Output.create<String>(map['repoNamespaceName'] as String),
      repoType: map['repoType'] == null ? null : pulumi.Output.create<String>(map['repoType'] as String),
      summary: map['summary'] == null ? null : pulumi.Output.create<String>(map['summary'] as String),
    );
  }
}

