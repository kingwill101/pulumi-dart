// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'consumer_response.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfigResponse16 {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<ConsumerResponse> consumers;

  NetworkConfigResponse16({
    required this.consumers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumers'] = Input.encodeList<ConsumerResponse, Map<String, dynamic>>(
        consumers, (value) => value.toMap());
    return map;
  }

  factory NetworkConfigResponse16.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse16(
      consumers: Input.decodeList<ConsumerResponse>(
          map['consumers'],
          (value) =>
              ConsumerResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
