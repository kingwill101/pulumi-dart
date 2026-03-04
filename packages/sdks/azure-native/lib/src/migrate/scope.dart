// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Scope of the assessment.
class Scope {
  /// The ARG query.
  final pulumi.Input<String>? azureResourceGraphQuery;

  /// The scope type
  final pulumi.Input<String>? scopeType;

  /// The server group arm id.
  final pulumi.Input<String>? serverGroupId;

  /// Creates a new [Scope].
  /// [azureResourceGraphQuery] The ARG query.
  /// [scopeType] The scope type
  /// [serverGroupId] The server group arm id.
  Scope({this.azureResourceGraphQuery, this.scopeType, this.serverGroupId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureResourceGraphQuery': ?azureResourceGraphQuery,
      'scopeType': ?scopeType,
      'serverGroupId': ?serverGroupId,
    };
  }

  factory Scope.fromMap(Map<String, dynamic> map) {
    return Scope(
      azureResourceGraphQuery: (() {
        final guardedValue = map['azureResourceGraphQuery'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopeType: (() {
        final guardedValue = map['scopeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverGroupId: (() {
        final guardedValue = map['serverGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
