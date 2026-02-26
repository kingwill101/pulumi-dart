// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'consumer_response3.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfigResponse18 {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<ConsumerResponse3> consumers;

  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final bool customRoutesEnabled;

  NetworkConfigResponse18({
    required this.consumers,
    required this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumers'] =
        Input.encodeList<ConsumerResponse3, Map<String, dynamic>>(
            consumers, (value) => value.toMap());
    map['customRoutesEnabled'] = customRoutesEnabled;
    return map;
  }

  factory NetworkConfigResponse18.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse18(
      consumers: Input.decodeList<ConsumerResponse3>(
          map['consumers'],
          (value) => ConsumerResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      customRoutesEnabled: map['customRoutesEnabled'] as bool,
    );
  }
}
