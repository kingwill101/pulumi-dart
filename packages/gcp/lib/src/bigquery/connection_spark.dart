// ignore_for_file: unused_element, unnecessary_cast

import 'connection_spark_metastore_service_config.dart';
import 'connection_spark_spark_history_server_config.dart';

class ConnectionSpark {
  /// Dataproc Metastore Service configuration for the connection.
  /// Structure is documented below.
  final ConnectionSparkMetastoreServiceConfig? metastoreServiceConfig;

  /// (Output)
  /// The account ID of the service created for the purpose of this connection.
  final String? serviceAccountId;

  /// Spark History Server configuration for the connection.
  /// Structure is documented below.
  final ConnectionSparkSparkHistoryServerConfig? sparkHistoryServerConfig;

  /// Creates a new [ConnectionSpark].
  /// [metastoreServiceConfig] Dataproc Metastore Service configuration for the connection.
  /// [serviceAccountId] (Output)
  /// [sparkHistoryServerConfig] Spark History Server configuration for the connection.
  ConnectionSpark({
    this.metastoreServiceConfig,
    this.serviceAccountId,
    this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreServiceConfig': ?metastoreServiceConfig == null
          ? null
          : metastoreServiceConfig!.toMap(),
      'serviceAccountId': ?serviceAccountId,
      'sparkHistoryServerConfig': ?sparkHistoryServerConfig == null
          ? null
          : sparkHistoryServerConfig!.toMap(),
    };
  }

  factory ConnectionSpark.fromMap(Map<String, dynamic> map) {
    return ConnectionSpark(
      metastoreServiceConfig: map['metastoreServiceConfig'] == null
          ? null
          : ConnectionSparkMetastoreServiceConfig.fromMap(
              (map['metastoreServiceConfig'] as Map).cast<String, dynamic>(),
            ),
      serviceAccountId: map['serviceAccountId'] == null
          ? null
          : map['serviceAccountId'] as String,
      sparkHistoryServerConfig: map['sparkHistoryServerConfig'] == null
          ? null
          : ConnectionSparkSparkHistoryServerConfig.fromMap(
              (map['sparkHistoryServerConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
