// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the parameters for the auto user that runs a task on the Batch service.
class AutoUserSpecificationResponse {
  /// The default value is nonAdmin.
  final pulumi.Input<String?>? elevationLevel;
  /// The default value is Pool. If the pool is running Windows a value of Task should be specified if stricter isolation between tasks is required. For example, if the task mutates the registry in a way which could impact other tasks, or if certificates have been specified on the pool which should not be accessible by normal tasks but should be accessible by start tasks.
  final pulumi.Input<String?>? scope;

  /// Creates a new [AutoUserSpecificationResponse].
  /// [elevationLevel] The default value is nonAdmin.
  /// [scope] The default value is Pool. If the pool is running Windows a value of Task should be specified if stricter isolation between tasks is required. For example, if the task mutates the registry in a way which could impact other tasks, or if certificates have been specified on the pool which should not be accessible by normal tasks but should be accessible by start tasks.
  const AutoUserSpecificationResponse({
    this.elevationLevel,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elevationLevel': ?elevationLevel,
      'scope': ?scope,
    };
  }

  factory AutoUserSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return AutoUserSpecificationResponse(
      elevationLevel: (() { final guardedValue = map['elevationLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
