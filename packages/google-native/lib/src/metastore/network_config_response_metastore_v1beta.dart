// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_response_metastore_v1beta.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfigResponseMetastoreV1beta {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<ConsumerResponseMetastoreV1beta> consumers;
  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final bool customRoutesEnabled;

  /// Creates a new [NetworkConfigResponseMetastoreV1beta].
  /// [consumers] Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  /// [customRoutesEnabled] Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  NetworkConfigResponseMetastoreV1beta({
    required this.consumers,
    required this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumers': pulumi.Input.encodeList<ConsumerResponseMetastoreV1beta, Map<String, dynamic>>(consumers, (value) => value.toMap()),
      'customRoutesEnabled': customRoutesEnabled,
    };
  }

  factory NetworkConfigResponseMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponseMetastoreV1beta(
      consumers: pulumi.Input.decodeList<ConsumerResponseMetastoreV1beta>(map['consumers'], (value) => ConsumerResponseMetastoreV1beta.fromMap((value as Map).cast<String, dynamic>())),
      customRoutesEnabled: map['customRoutesEnabled'] as bool,
    );
  }
}

