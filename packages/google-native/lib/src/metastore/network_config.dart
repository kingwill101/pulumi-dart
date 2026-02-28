// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer.dart';

/// Network configuration for the Dataproc Metastore service.
class NetworkConfig {
  /// Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  final List<Consumer>? consumers;

  /// Creates a new [NetworkConfig].
  /// [consumers] Immutable. The consumer-side network configuration for the Dataproc Metastore instance.
  NetworkConfig({
    this.consumers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumers': ?consumers == null ? null : pulumi.Input.encodeList<Consumer, Map<String, dynamic>>(consumers!, (value) => value.toMap()),
    };
  }

  factory NetworkConfig.fromMap(Map<String, dynamic> map) {
    return NetworkConfig(
      consumers: map['consumers'] == null ? null : pulumi.Input.decodeList<Consumer>(map['consumers'], (value) => Consumer.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

