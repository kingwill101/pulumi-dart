// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHubContentHubContentDependency {
  /// Hub content dependency copy path.
  final pulumi.Input<String> dependencyCopyPath;
  /// Hub content dependency origin path.
  final pulumi.Input<String> dependencyOriginPath;

  /// Creates a new [GetHubContentHubContentDependency].
  /// [dependencyCopyPath] Hub content dependency copy path.
  /// [dependencyOriginPath] Hub content dependency origin path.
  const GetHubContentHubContentDependency({
    required this.dependencyCopyPath,
    required this.dependencyOriginPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dependencyCopyPath': dependencyCopyPath,
      'dependencyOriginPath': dependencyOriginPath,
    };
  }

  factory GetHubContentHubContentDependency.fromMap(Map<String, dynamic> map) {
    return GetHubContentHubContentDependency(
      dependencyCopyPath: pulumi.Input.fromValue(map['dependencyCopyPath'] as String),
      dependencyOriginPath: pulumi.Input.fromValue(map['dependencyOriginPath'] as String),
    );
  }
}
