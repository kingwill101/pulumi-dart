// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProjectBuildBatchConfigRestrictions {
  /// An array of strings that specify the compute types that are allowed for the batch
  /// build.
  /// See [Build environment compute types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html)
  /// in the AWS CodeBuild User Guide for these values.
  final pulumi.Input<List<String>>? computeTypesAlloweds;

  /// Specifies the maximum number of builds allowed.
  final pulumi.Input<int>? maximumBuildsAllowed;

  /// Creates a new [ProjectBuildBatchConfigRestrictions].
  /// [computeTypesAlloweds] An array of strings that specify the compute types that are allowed for the batch
  /// [maximumBuildsAllowed] Specifies the maximum number of builds allowed.
  ProjectBuildBatchConfigRestrictions({
    this.computeTypesAlloweds,
    this.maximumBuildsAllowed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeTypesAlloweds': ?computeTypesAlloweds,
      'maximumBuildsAllowed': ?maximumBuildsAllowed,
    };
  }

  factory ProjectBuildBatchConfigRestrictions.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProjectBuildBatchConfigRestrictions(
      computeTypesAlloweds: (() {
        final guardedValue = map['computeTypesAlloweds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      maximumBuildsAllowed: (() {
        final guardedValue = map['maximumBuildsAllowed'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
