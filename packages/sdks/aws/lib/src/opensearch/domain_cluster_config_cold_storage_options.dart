// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainClusterConfigColdStorageOptions {
  /// Boolean to enable cold storage for an OpenSearch domain. Defaults to `false`. Master and ultrawarm nodes must be enabled for cold storage.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [DomainClusterConfigColdStorageOptions].
  /// [enabled] Boolean to enable cold storage for an OpenSearch domain. Defaults to `false`. Master and ultrawarm nodes must be enabled for cold storage.
  const DomainClusterConfigColdStorageOptions({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DomainClusterConfigColdStorageOptions.fromMap(Map<String, dynamic> map) {
    return DomainClusterConfigColdStorageOptions(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
