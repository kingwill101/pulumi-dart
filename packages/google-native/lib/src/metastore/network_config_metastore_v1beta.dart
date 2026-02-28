// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_metastore_v1beta.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfigMetastoreV1beta {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<ConsumerMetastoreV1beta>? consumers;

  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final bool? customRoutesEnabled;

  /// Creates a new [NetworkConfigMetastoreV1beta].
  /// [consumers] Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  /// [customRoutesEnabled] Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  NetworkConfigMetastoreV1beta({
    this.consumers,
    this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final consumersValue = consumers;
    if (consumersValue != null) {
      map['consumers'] = pulumi.Input.encodeList<ConsumerMetastoreV1beta,
          Map<String, dynamic>>(consumersValue, (value) => value.toMap());
    }
    final customRoutesEnabledValue = customRoutesEnabled;
    if (customRoutesEnabledValue != null) {
      map['customRoutesEnabled'] = customRoutesEnabledValue;
    }
    return map;
  }

  factory NetworkConfigMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return NetworkConfigMetastoreV1beta(
      consumers: map['consumers'] == null
          ? null
          : pulumi.Input.decodeList<ConsumerMetastoreV1beta>(
              map['consumers'],
              (value) => ConsumerMetastoreV1beta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      customRoutesEnabled: map['customRoutesEnabled'] == null
          ? null
          : map['customRoutesEnabled'] as bool,
    );
  }
}
