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
    this.instanceId,
    this.repoName,
    this.repoNamespaceName,
    this.repoType,
    this.summary,
  });

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
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repoName: (() {
        final guardedValue = map['repoName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repoNamespaceName: (() {
        final guardedValue = map['repoNamespaceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repoType: (() {
        final guardedValue = map['repoType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      summary: (() {
        final guardedValue = map['summary'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
