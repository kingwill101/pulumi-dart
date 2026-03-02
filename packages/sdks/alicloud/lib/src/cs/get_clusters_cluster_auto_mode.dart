// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClustersClusterAutoMode {
  /// Whether to enable cluster automatic upgrade.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetClustersClusterAutoMode].
  /// [enabled] Whether to enable cluster automatic upgrade.
  GetClustersClusterAutoMode({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GetClustersClusterAutoMode.fromMap(Map<String, dynamic> map) {
    return GetClustersClusterAutoMode(
      enabled: (map['enabled'] as bool).input(),
    );
  }
}

