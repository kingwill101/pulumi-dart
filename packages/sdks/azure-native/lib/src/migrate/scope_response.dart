// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scope of the assessment.
class ScopeResponse {
  /// The ARG query.
  final pulumi.Input<String>? azureResourceGraphQuery;
  /// The scope type
  final pulumi.Input<String>? scopeType;
  /// The server group arm id.
  final pulumi.Input<String>? serverGroupId;

  /// Creates a new [ScopeResponse].
  /// [azureResourceGraphQuery] The ARG query.
  /// [scopeType] The scope type
  /// [serverGroupId] The server group arm id.
  ScopeResponse({
    this.azureResourceGraphQuery,
    this.scopeType,
    this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceGraphQuery': ?azureResourceGraphQuery,
      'scopeType': ?scopeType,
      'serverGroupId': ?serverGroupId,
    };
  }

  factory ScopeResponse.fromMap(Map<String, dynamic> map) {
    return ScopeResponse(
      azureResourceGraphQuery: map['azureResourceGraphQuery'] == null ? null : (map['azureResourceGraphQuery']! as String).input(),
      scopeType: map['scopeType'] == null ? null : (map['scopeType']! as String).input(),
      serverGroupId: map['serverGroupId'] == null ? null : (map['serverGroupId']! as String).input(),
    );
  }
}

