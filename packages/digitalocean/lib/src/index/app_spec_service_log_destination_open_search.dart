// ignore_for_file: unused_element, unnecessary_cast

import 'app_spec_service_log_destination_open_search_basic_auth.dart';

class AppSpecServiceLogDestinationOpenSearch {
  /// Basic authentication details.
  final AppSpecServiceLogDestinationOpenSearchBasicAuth basicAuth;
  /// The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if `cluster_name` is not set, a new cluster will be provisioned.
  final String? clusterName;
  /// OpenSearch endpoint.
  final String? endpoint;
  /// OpenSearch index name.
  final String? indexName;

  /// Creates a new [AppSpecServiceLogDestinationOpenSearch].
  /// [basicAuth] Basic authentication details.
  /// [clusterName] The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if `cluster_name` is not set, a new cluster will be provisioned.
  /// [endpoint] OpenSearch endpoint.
  /// [indexName] OpenSearch index name.
  AppSpecServiceLogDestinationOpenSearch({
    required this.basicAuth,
    this.clusterName,
    this.endpoint,
    this.indexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth': basicAuth.toMap(),
      'clusterName': ?clusterName,
      'endpoint': ?endpoint,
      'indexName': ?indexName,
    };
  }

  factory AppSpecServiceLogDestinationOpenSearch.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceLogDestinationOpenSearch(
      basicAuth: AppSpecServiceLogDestinationOpenSearchBasicAuth.fromMap((map['basicAuth'] as Map).cast<String, dynamic>()),
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      indexName: map['indexName'] == null ? null : map['indexName'] as String,
    );
  }
}

