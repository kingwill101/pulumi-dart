// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ColdStorageOptions
class ColdStorageOptions {
  /// &lt;p&gt;Whether to enable or disable cold storage on the domain. You must enable UltraWarm storage to enable cold storage.&lt;/p&gt;
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ColdStorageOptions].
  /// [enabled] &lt;p&gt;Whether to enable or disable cold storage on the domain. You must enable UltraWarm storage to enable cold storage.&lt;/p&gt;
  const ColdStorageOptions({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ColdStorageOptions.fromMap(Map<String, dynamic> map) {
    return ColdStorageOptions(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
