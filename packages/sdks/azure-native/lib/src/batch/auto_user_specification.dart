// ignore_for_file: unused_element, unnecessary_cast

import 'auto_user_scope.dart';
import 'elevation_level.dart';

/// Specifies the parameters for the auto user that runs a task on the Batch service.
class AutoUserSpecification {
  /// The default value is nonAdmin.
  final ElevationLevel? elevationLevel;
  /// The default value is Pool. If the pool is running Windows a value of Task should be specified if stricter isolation between tasks is required. For example, if the task mutates the registry in a way which could impact other tasks, or if certificates have been specified on the pool which should not be accessible by normal tasks but should be accessible by start tasks.
  final AutoUserScope? scope;

  /// Creates a new [AutoUserSpecification].
  /// [elevationLevel] The default value is nonAdmin.
  /// [scope] The default value is Pool. If the pool is running Windows a value of Task should be specified if stricter isolation between tasks is required. For example, if the task mutates the registry in a way which could impact other tasks, or if certificates have been specified on the pool which should not be accessible by normal tasks but should be accessible by start tasks.
  AutoUserSpecification({
    this.elevationLevel,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elevationLevel': ?elevationLevel == null ? null : elevationLevel!.value,
      'scope': ?scope == null ? null : scope!.value,
    };
  }

  factory AutoUserSpecification.fromMap(Map<String, dynamic> map) {
    return AutoUserSpecification(
      elevationLevel: map['elevationLevel'] == null ? null : ElevationLevel.fromValue(map['elevationLevel'] as String),
      scope: map['scope'] == null ? null : AutoUserScope.fromValue(map['scope'] as String),
    );
  }
}

