// ignore_for_file: unused_element, unnecessary_cast


/// Definition of BatchRestrictions
class BatchRestrictions {
  /// <p>An array of strings that specify the compute types that are allowed for the batch build. See <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html'>Build environment compute types</a> in the <i>CodeBuild User Guide</i> for these values. </p>
  final List<String>? computeTypesAllowed;
  /// <p>Specifies the maximum number of builds allowed.</p>
  final int? maximumBuildsAllowed;

  /// Creates a new [BatchRestrictions].
  /// [computeTypesAllowed] <p>An array of strings that specify the compute types that are allowed for the batch build. See <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html'>Build environment compute types</a> in the <i>CodeBuild User Guide</i> for these values. </p>
  /// [maximumBuildsAllowed] <p>Specifies the maximum number of builds allowed.</p>
  BatchRestrictions({
    this.computeTypesAllowed,
    this.maximumBuildsAllowed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeTypesAllowed': ?computeTypesAllowed,
      'maximumBuildsAllowed': ?maximumBuildsAllowed,
    };
  }

  factory BatchRestrictions.fromMap(Map<String, dynamic> map) {
    return BatchRestrictions(
      computeTypesAllowed: map['computeTypesAllowed'] == null ? null : (map['computeTypesAllowed'] as List).cast<String>(),
      maximumBuildsAllowed: map['maximumBuildsAllowed'] == null ? null : map['maximumBuildsAllowed'] as int,
    );
  }
}

