// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'consumer.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfig16 {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<Consumer>? consumers;

  NetworkConfig16({
    this.consumers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumersValue = consumers;
    if (consumersValue != null) {
      map['consumers'] = Input.encodeList<Consumer, Map<String, dynamic>>(
          consumersValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkConfig16.fromMap(Map<String, dynamic> map) {
    return NetworkConfig16(
      consumers: map['consumers'] == null
          ? null
          : Input.decodeList<Consumer>(
              map['consumers'],
              (value) =>
                  Consumer.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
