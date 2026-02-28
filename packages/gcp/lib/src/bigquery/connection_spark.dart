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
    final map = <String, dynamic>{};
    final metastoreServiceConfigValue = metastoreServiceConfig;
    if (metastoreServiceConfigValue != null) {
      map['metastoreServiceConfig'] = metastoreServiceConfigValue.toMap();
    }
    final serviceAccountIdValue = serviceAccountId;
    if (serviceAccountIdValue != null) {
      map['serviceAccountId'] = serviceAccountIdValue;
    }
    final sparkHistoryServerConfigValue = sparkHistoryServerConfig;
    if (sparkHistoryServerConfigValue != null) {
      map['sparkHistoryServerConfig'] = sparkHistoryServerConfigValue.toMap();
    }
    return map;
  }

  factory ConnectionSpark.fromMap(Map<String, dynamic> map) {
    return ConnectionSpark(
      metastoreServiceConfig: map['metastoreServiceConfig'] == null
          ? null
          : ConnectionSparkMetastoreServiceConfig.fromMap(
              (map['metastoreServiceConfig'] as Map).cast<String, dynamic>()),
      serviceAccountId: map['serviceAccountId'] == null
          ? null
          : map['serviceAccountId'] as String,
      sparkHistoryServerConfig: map['sparkHistoryServerConfig'] == null
          ? null
          : ConnectionSparkSparkHistoryServerConfig.fromMap(
              (map['sparkHistoryServerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
