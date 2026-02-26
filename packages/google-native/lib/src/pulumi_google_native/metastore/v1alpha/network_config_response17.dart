// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'consumer_response2.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfigResponse17 {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<ConsumerResponse2> consumers;

  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final bool customRoutesEnabled;

  NetworkConfigResponse17({
    required this.consumers,
    required this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumers'] =
        Input.encodeList<ConsumerResponse2, Map<String, dynamic>>(
            consumers, (value) => value.toMap());
    map['customRoutesEnabled'] = customRoutesEnabled;
    return map;
  }

  factory NetworkConfigResponse17.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse17(
      consumers: Input.decodeList<ConsumerResponse2>(
          map['consumers'],
          (value) => ConsumerResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      customRoutesEnabled: map['customRoutesEnabled'] as bool,
    );
  }
}
