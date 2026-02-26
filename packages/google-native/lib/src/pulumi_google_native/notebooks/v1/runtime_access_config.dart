// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_access_config_access_type.dart';

/// Specifies the login configuration for Runtime
class RuntimeAccessConfig {
  /// The type of access mode this instance.
  final RuntimeAccessConfigAccessType? accessType;

  /// The owner of this runtime after creation. Format: `alias@example.com` Currently supports one owner only.
  final String? runtimeOwner;

  RuntimeAccessConfig({
    this.accessType,
    this.runtimeOwner,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTypeValue = accessType;
    if (accessTypeValue != null) {
      map['accessType'] = accessTypeValue.value;
    }
    final runtimeOwnerValue = runtimeOwner;
    if (runtimeOwnerValue != null) {
      map['runtimeOwner'] = runtimeOwnerValue;
    }
    return map;
  }

  factory RuntimeAccessConfig.fromMap(Map<String, dynamic> map) {
    return RuntimeAccessConfig(
      accessType: map['accessType'] == null
          ? null
          : RuntimeAccessConfigAccessType.fromValue(
              map['accessType'] as String),
      runtimeOwner:
          map['runtimeOwner'] == null ? null : map['runtimeOwner'] as String,
    );
  }
}
