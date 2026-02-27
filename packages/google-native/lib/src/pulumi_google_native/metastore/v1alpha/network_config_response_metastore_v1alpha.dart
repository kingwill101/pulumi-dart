// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_response_metastore_v1alpha.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfigResponseMetastoreV1alpha {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<ConsumerResponseMetastoreV1alpha> consumers;

  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final bool customRoutesEnabled;

  NetworkConfigResponseMetastoreV1alpha({
    required this.consumers,
    required this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumers'] = pulumi.Input.encodeList<ConsumerResponseMetastoreV1alpha,
        Map<String, dynamic>>(consumers, (value) => value.toMap());
    map['customRoutesEnabled'] = customRoutesEnabled;
    return map;
  }

  factory NetworkConfigResponseMetastoreV1alpha.fromMap(
      Map<String, dynamic> map) {
    return NetworkConfigResponseMetastoreV1alpha(
      consumers: pulumi.Input.decodeList<ConsumerResponseMetastoreV1alpha>(
          map['consumers'],
          (value) => ConsumerResponseMetastoreV1alpha.fromMap(
              (value as Map).cast<String, dynamic>())),
      customRoutesEnabled: map['customRoutesEnabled'] as bool,
    );
  }
}
