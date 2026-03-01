// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_spec_service_log_destination_open_search_basic_auth.dart';

class GetAppSpecServiceLogDestinationOpenSearch {
  /// OpenSearch basic auth
  final GetAppSpecServiceLogDestinationOpenSearchBasicAuth basicAuth;
  /// The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if `cluster_name` is not set, a new cluster will be provisioned.
  final String? clusterName;
  /// OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  final String? endpoint;
  /// The index name to use for the logs. If not set, the default index name is `logs`.
  final String? indexName;

  /// Creates a new [GetAppSpecServiceLogDestinationOpenSearch].
  /// [basicAuth] OpenSearch basic auth
  /// [clusterName] The name of the underlying DigitalOcean DBaaS cluster. This is required for production databases. For dev databases, if `cluster_name` is not set, a new cluster will be provisioned.
  /// [endpoint] OpenSearch API Endpoint. Only HTTPS is supported. Format: https://<host>:<port>.
  /// [indexName] The index name to use for the logs. If not set, the default index name is `logs`.
  GetAppSpecServiceLogDestinationOpenSearch({
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

  factory GetAppSpecServiceLogDestinationOpenSearch.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceLogDestinationOpenSearch(
      basicAuth: GetAppSpecServiceLogDestinationOpenSearchBasicAuth.fromMap((map['basicAuth'] as Map).cast<String, dynamic>()),
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      indexName: map['indexName'] == null ? null : map['indexName'] as String,
    );
  }
}

