// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_metastore_v1alpha.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfigMetastoreV1alpha {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<ConsumerMetastoreV1alpha>? consumers;
  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final bool? customRoutesEnabled;

  /// Creates a new [NetworkConfigMetastoreV1alpha].
  /// [consumers] Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  /// [customRoutesEnabled] Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  NetworkConfigMetastoreV1alpha({
    this.consumers,
    this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumers': ?consumers == null ? null : pulumi.Input.encodeList<ConsumerMetastoreV1alpha, Map<String, dynamic>>(consumers!, (value) => value.toMap()),
      'customRoutesEnabled': ?customRoutesEnabled,
    };
  }

  factory NetworkConfigMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return NetworkConfigMetastoreV1alpha(
      consumers: map['consumers'] == null ? null : pulumi.Input.decodeList<ConsumerMetastoreV1alpha>(map['consumers'], (value) => ConsumerMetastoreV1alpha.fromMap((value as Map).cast<String, dynamic>())),
      customRoutesEnabled: map['customRoutesEnabled'] == null ? null : map['customRoutesEnabled'] as bool,
    );
  }
}

