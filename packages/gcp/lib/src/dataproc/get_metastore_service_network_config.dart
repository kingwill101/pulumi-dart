// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_metastore_service_network_config_consumer.dart';

class GetMetastoreServiceNetworkConfig {
  /// The consumer-side network configuration for the Dataproc Metastore instance.
  final List<GetMetastoreServiceNetworkConfigConsumer> consumers;

  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final bool customRoutesEnabled;

  /// Creates a new [GetMetastoreServiceNetworkConfig].
  /// [consumers] The consumer-side network configuration for the Dataproc Metastore instance.
  /// [customRoutesEnabled] Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  GetMetastoreServiceNetworkConfig({
    required this.consumers,
    required this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumers'] = pulumi.Input.encodeList<
        GetMetastoreServiceNetworkConfigConsumer,
        Map<String, dynamic>>(consumers, (value) => value.toMap());
    map['customRoutesEnabled'] = customRoutesEnabled;
    return map;
  }

  factory GetMetastoreServiceNetworkConfig.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceNetworkConfig(
      consumers:
          pulumi.Input.decodeList<GetMetastoreServiceNetworkConfigConsumer>(
              map['consumers'],
              (value) => GetMetastoreServiceNetworkConfigConsumer.fromMap(
                  (value as Map).cast<String, dynamic>())),
      customRoutesEnabled: map['customRoutesEnabled'] as bool,
    );
  }
}
