// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data model of Assessment Scope Parameters.
class AssessmentScopeParameters {
  /// Gets or sets the server group id.
  final pulumi.Input<String>? serverGroupId;

  /// Creates a new [AssessmentScopeParameters].
  /// [serverGroupId] Gets or sets the server group id.
  AssessmentScopeParameters({
    this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupId': ?serverGroupId,
    };
  }

  factory AssessmentScopeParameters.fromMap(Map<String, dynamic> map) {
    return AssessmentScopeParameters(
      serverGroupId: map['serverGroupId'] == null ? null : (map['serverGroupId']! as String).input(),
    );
  }
}

