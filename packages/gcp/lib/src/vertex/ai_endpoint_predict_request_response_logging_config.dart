// ignore_for_file: unused_element, unnecessary_cast

import 'ai_endpoint_predict_request_response_logging_config_bigquery_destination.dart';

class AiEndpointPredictRequestResponseLoggingConfig {
  /// BigQuery table for logging. If only given a project, a new dataset will be created with name `logging_<endpoint-display-name>_<endpoint-id>` where will be made BigQuery-dataset-name compatible (e.g. most special characters will become underscores). If no table name is given, a new table will be created with name `request_response_logging`
  /// Structure is documented below.
  final AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination? bigqueryDestination;
  /// If logging is enabled or not.
  final bool? enabled;
  /// Percentage of requests to be logged, expressed as a fraction in range(0,1]
  final double? samplingRate;

  /// Creates a new [AiEndpointPredictRequestResponseLoggingConfig].
  /// [bigqueryDestination] BigQuery table for logging. If only given a project, a new dataset will be created with name `logging_<endpoint-display-name>_<endpoint-id>` where will be made BigQuery-dataset-name compatible (e.g. most special characters will become underscores). If no table name is given, a new table will be created with name `request_response_logging`
  /// [enabled] If logging is enabled or not.
  /// [samplingRate] Percentage of requests to be logged, expressed as a fraction in range(0,1]
  AiEndpointPredictRequestResponseLoggingConfig({
    this.bigqueryDestination,
    this.enabled,
    this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigqueryDestination': ?bigqueryDestination == null ? null : bigqueryDestination!.toMap(),
      'enabled': ?enabled,
      'samplingRate': ?samplingRate,
    };
  }

  factory AiEndpointPredictRequestResponseLoggingConfig.fromMap(Map<String, dynamic> map) {
    return AiEndpointPredictRequestResponseLoggingConfig(
      bigqueryDestination: map['bigqueryDestination'] == null ? null : AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination.fromMap((map['bigqueryDestination'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      samplingRate: map['samplingRate'] == null ? null : map['samplingRate'] as double,
    );
  }
}

