// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of BatchRestrictions
class BatchRestrictionsResponse {
  /// &lt;p&gt;An array of strings that specify the compute types that are allowed for the batch build. See &lt;a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html'&gt;Build environment compute types&lt;/a&gt; in the &lt;i&gt;CodeBuild User Guide&lt;/i&gt; for these values. &lt;/p&gt;
  final pulumi.Input<List<String>>? computeTypesAllowed;

  /// &lt;p&gt;Specifies the maximum number of builds allowed.&lt;/p&gt;
  final pulumi.Input<int>? maximumBuildsAllowed;

  /// Creates a new [BatchRestrictionsResponse].
  /// [computeTypesAllowed] &lt;p&gt;An array of strings that specify the compute types that are allowed for the batch build. See &lt;a href='https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html'&gt;Build environment compute types&lt;/a&gt; in the &lt;i&gt;CodeBuild User Guide&lt;/i&gt; for these values. &lt;/p&gt;
  /// [maximumBuildsAllowed] &lt;p&gt;Specifies the maximum number of builds allowed.&lt;/p&gt;
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
      computeTypesAllowed: (() {
        final guardedValue = map['computeTypesAllowed'];
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
