// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainClusterConfigColdStorageOption {
  /// Enabled disabled toggle for off-peak update window
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetDomainClusterConfigColdStorageOption].
  /// [enabled] Enabled disabled toggle for off-peak update window
  const GetDomainClusterConfigColdStorageOption({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetDomainClusterConfigColdStorageOption.fromMap(Map<String, dynamic> map) {
    return GetDomainClusterConfigColdStorageOption(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
