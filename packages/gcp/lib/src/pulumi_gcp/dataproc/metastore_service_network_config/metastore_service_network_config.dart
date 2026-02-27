// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../metastore_service_network_config_consumer/metastore_service_network_config_consumer.dart';

class MetastoreServiceNetworkConfig {
  /// The consumer-side network configuration for the Dataproc Metastore instance.
  /// Structure is documented below.
  final List<MetastoreServiceNetworkConfigConsumer> consumers;

  /// Enables custom routes to be imported and exported for the Dataproc Metastore service's peered VPC network.
  final bool? customRoutesEnabled;

  MetastoreServiceNetworkConfig({
    required this.consumers,
    this.customRoutesEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['consumers'] = pulumi.Input.encodeList<
        MetastoreServiceNetworkConfigConsumer,
        Map<String, dynamic>>(consumers, (value) => value.toMap());
    final customRoutesEnabledValue = customRoutesEnabled;
    if (customRoutesEnabledValue != null) {
      map['customRoutesEnabled'] = customRoutesEnabledValue;
    }
    return map;
  }

  factory MetastoreServiceNetworkConfig.fromMap(Map<String, dynamic> map) {
    return MetastoreServiceNetworkConfig(
      consumers: pulumi.Input.decodeList<MetastoreServiceNetworkConfigConsumer>(
          map['consumers'],
          (value) => MetastoreServiceNetworkConfigConsumer.fromMap(
              (value as Map).cast<String, dynamic>())),
      customRoutesEnabled: map['customRoutesEnabled'] == null
          ? null
          : map['customRoutesEnabled'] as bool,
    );
  }
}
