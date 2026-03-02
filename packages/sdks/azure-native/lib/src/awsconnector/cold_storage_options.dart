// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ColdStorageOptions
class ColdStorageOptions {
  /// <p>Whether to enable or disable cold storage on the domain. You must enable UltraWarm storage to enable cold storage.</p>
  final pulumi.Input<bool>? enabled;

  /// Creates a new [ColdStorageOptions].
  /// [enabled] <p>Whether to enable or disable cold storage on the domain. You must enable UltraWarm storage to enable cold storage.</p>
  ColdStorageOptions({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ColdStorageOptions.fromMap(Map<String, dynamic> map) {
    return ColdStorageOptions(
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
    );
  }
}

