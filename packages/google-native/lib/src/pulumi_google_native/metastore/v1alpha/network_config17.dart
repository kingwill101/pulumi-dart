// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'consumer2.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfig17 {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<Consumer2>? consumers;

  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final bool? customRoutesEnabled;

  NetworkConfig17({
    this.consumers,
    this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumersValue = consumers;
    if (consumersValue != null) {
      map['consumers'] = Input.encodeList<Consumer2, Map<String, dynamic>>(
          consumersValue, (value) => value.toMap());
    }
    final customRoutesEnabledValue = customRoutesEnabled;
    if (customRoutesEnabledValue != null) {
      map['customRoutesEnabled'] = customRoutesEnabledValue;
    }
    return map;
  }

  factory NetworkConfig17.fromMap(Map<String, dynamic> map) {
    return NetworkConfig17(
      consumers: map['consumers'] == null
          ? null
          : Input.decodeList<Consumer2>(
              map['consumers'],
              (value) =>
                  Consumer2.fromMap((value as Map).cast<String, dynamic>())),
      customRoutesEnabled: map['customRoutesEnabled'] == null
          ? null
          : map['customRoutesEnabled'] as bool,
    );
  }
}
