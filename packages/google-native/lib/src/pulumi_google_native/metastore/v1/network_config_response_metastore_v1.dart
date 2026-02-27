// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_response.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfigResponseMetastoreV1 {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<ConsumerResponse> consumers;

  NetworkConfigResponseMetastoreV1({
    required this.consumers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumers'] =
        pulumi.Input.encodeList<ConsumerResponse, Map<String, dynamic>>(
            consumers, (value) => value.toMap());
    return map;
  }

  factory NetworkConfigResponseMetastoreV1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponseMetastoreV1(
      consumers: pulumi.Input.decodeList<ConsumerResponse>(
          map['consumers'],
          (value) =>
              ConsumerResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
