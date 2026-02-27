// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfigMetastoreV1 {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<Consumer>? consumers;

  NetworkConfigMetastoreV1({
    this.consumers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumersValue = consumers;
    if (consumersValue != null) {
      map['consumers'] =
          pulumi.Input.encodeList<Consumer, Map<String, dynamic>>(
              consumersValue, (value) => value.toMap());
    }
    return map;
  }

  factory NetworkConfigMetastoreV1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigMetastoreV1(
      consumers: map['consumers'] == null
          ? null
          : pulumi.Input.decodeList<Consumer>(
              map['consumers'],
              (value) =>
                  Consumer.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
