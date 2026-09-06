// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data model of Assessment Scope Parameters.
class AssessmentScopeParametersResponse {
  /// Gets or sets the server group id.
  final pulumi.Input<String?>? serverGroupId;

  /// Creates a new [AssessmentScopeParametersResponse].
  /// [serverGroupId] Gets or sets the server group id.
  const AssessmentScopeParametersResponse({
    this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupId': ?serverGroupId,
    };
  }

  factory AssessmentScopeParametersResponse.fromMap(Map<String, dynamic> map) {
    return AssessmentScopeParametersResponse(
      serverGroupId: (() { final guardedValue = map['serverGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
