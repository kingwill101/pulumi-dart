// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data model of Assessment Scope Parameters.
class AssessmentScopeParameters {
  /// Gets or sets the server group id.
  final pulumi.Input<String>? serverGroupId;

  /// Creates a new [AssessmentScopeParameters].
  /// [serverGroupId] Gets or sets the server group id.
  const AssessmentScopeParameters({
    this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupId': ?serverGroupId,
    };
  }

  factory AssessmentScopeParameters.fromMap(Map<String, dynamic> map) {
    return AssessmentScopeParameters(
      serverGroupId: (() { final guardedValue = map['serverGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
