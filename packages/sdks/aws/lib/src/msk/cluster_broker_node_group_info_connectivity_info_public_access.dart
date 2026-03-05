// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess {
  /// Public access type. Valid values: `DISABLED`, `SERVICE_PROVIDED_EIPS`.
  final pulumi.Input<String>? type;

  /// Creates a new [ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess].
  /// [type] Public access type. Valid values: `DISABLED`, `SERVICE_PROVIDED_EIPS`.
  ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess.fromMap(Map<String, dynamic> map) {
    return ClusterBrokerNodeGroupInfoConnectivityInfoPublicAccess(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

