// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'consumer3.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfig18 {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<Consumer3>? consumers;

  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final bool? customRoutesEnabled;

  NetworkConfig18({
    this.consumers,
    this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumersValue = consumers;
    if (consumersValue != null) {
      map['consumers'] = Input.encodeList<Consumer3, Map<String, dynamic>>(
          consumersValue, (value) => value.toMap());
    }
    final customRoutesEnabledValue = customRoutesEnabled;
    if (customRoutesEnabledValue != null) {
      map['customRoutesEnabled'] = customRoutesEnabledValue;
    }
    return map;
  }

  factory NetworkConfig18.fromMap(Map<String, dynamic> map) {
    return NetworkConfig18(
      consumers: map['consumers'] == null
          ? null
          : Input.decodeList<Consumer3>(
              map['consumers'],
              (value) =>
                  Consumer3.fromMap((value as Map).cast<String, dynamic>())),
      customRoutesEnabled: map['customRoutesEnabled'] == null
          ? null
          : map['customRoutesEnabled'] as bool,
    );
  }
}
