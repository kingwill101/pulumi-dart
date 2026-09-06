// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the resource scope
class PolicyPropertiesScopeResponse {
  /// Display name of the resource
  final pulumi.Input<String?>? displayName;
  /// Scope id of the resource
  final pulumi.Input<String?>? id;
  /// Type of the resource
  final pulumi.Input<String?>? type;

  /// Creates a new [PolicyPropertiesScopeResponse].
  /// [displayName] Display name of the resource
  /// [id] Scope id of the resource
  /// [type] Type of the resource
  const PolicyPropertiesScopeResponse({
    this.displayName,
    this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'type': ?type,
    };
  }

  factory PolicyPropertiesScopeResponse.fromMap(Map<String, dynamic> map) {
    return PolicyPropertiesScopeResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
