// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of BatchRestrictions
class BatchRestrictionsResponse {
  /// <p>An array of strings that specify the compute types that are allowed for the batch build. See <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html'>Build environment compute types</a> in the <i>CodeBuild User Guide</i> for these values. </p>
  final pulumi.Input<List<String>>? computeTypesAllowed;
  /// <p>Specifies the maximum number of builds allowed.</p>
  final pulumi.Input<int>? maximumBuildsAllowed;

  /// Creates a new [BatchRestrictionsResponse].
  /// [computeTypesAllowed] <p>An array of strings that specify the compute types that are allowed for the batch build. See <a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html'>Build environment compute types</a> in the <i>CodeBuild User Guide</i> for these values. </p>
  /// [maximumBuildsAllowed] <p>Specifies the maximum number of builds allowed.</p>
  BatchRestrictionsResponse({
    this.computeTypesAllowed,
    this.maximumBuildsAllowed,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeTypesAllowed': ?computeTypesAllowed,
      'maximumBuildsAllowed': ?maximumBuildsAllowed,
    };
  }

  factory BatchRestrictionsResponse.fromMap(Map<String, dynamic> map) {
    return BatchRestrictionsResponse(
      computeTypesAllowed: map['computeTypesAllowed'] == null ? null : ((map['computeTypesAllowed']! as List).cast<String>()).input(),
      maximumBuildsAllowed: map['maximumBuildsAllowed'] == null ? null : (map['maximumBuildsAllowed']! as int).input(),
    );
  }
}

