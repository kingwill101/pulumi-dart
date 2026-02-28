// ignore_for_file: unused_element, unnecessary_cast

class ProjectBuildBatchConfigRestrictions {
  /// An array of strings that specify the compute types that are allowed for the batch
  /// build.
  /// See [Build environment compute types](https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html)
  /// in the AWS CodeBuild User Guide for these values.
  final List<String>? computeTypesAlloweds;

  /// Specifies the maximum number of builds allowed.
  final int? maximumBuildsAllowed;

  /// Creates a new [ProjectBuildBatchConfigRestrictions].
  /// [computeTypesAlloweds] An array of strings that specify the compute types that are allowed for the batch
  /// [maximumBuildsAllowed] Specifies the maximum number of builds allowed.
  ProjectBuildBatchConfigRestrictions({
    this.computeTypesAlloweds,
    this.maximumBuildsAllowed,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final computeTypesAllowedsValue = computeTypesAlloweds;
    if (computeTypesAllowedsValue != null) {
      map['computeTypesAlloweds'] = computeTypesAllowedsValue;
    }
    final maximumBuildsAllowedValue = maximumBuildsAllowed;
    if (maximumBuildsAllowedValue != null) {
      map['maximumBuildsAllowed'] = maximumBuildsAllowedValue;
    }
    return map;
  }

  factory ProjectBuildBatchConfigRestrictions.fromMap(
      Map<String, dynamic> map) {
    return ProjectBuildBatchConfigRestrictions(
      computeTypesAlloweds: map['computeTypesAlloweds'] == null
          ? null
          : (map['computeTypesAlloweds'] as List).cast<String>(),
      maximumBuildsAllowed: map['maximumBuildsAllowed'] == null
          ? null
          : map['maximumBuildsAllowed'] as int,
    );
  }
}
