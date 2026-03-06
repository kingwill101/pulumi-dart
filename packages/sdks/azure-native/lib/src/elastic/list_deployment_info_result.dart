// ignore_for_file: unused_element, unnecessary_cast

import 'marketplace_saa_sinfo_response.dart';

/// Result data returned by listDeploymentInfo.
class ListDeploymentInfoResult {
  /// Deployment URL of the elasticsearch in Elastic cloud deployment.
  final String deploymentUrl;
  /// Disk capacity of the elasticsearch in Elastic cloud deployment.
  final String diskCapacity;
  /// Elasticsearch endpoint in Elastic cloud deployment. This is either the aliased_endpoint if available, or the service_url otherwise.
  final String elasticsearchEndPoint;
  /// Marketplace SaaS Info of the resource.
  final MarketplaceSaaSInfoResponse marketplaceSaasInfo;
  /// RAM capacity of the elasticsearch in Elastic cloud deployment.
  final String memoryCapacity;
  /// The Elastic deployment status.
  final String status;
  /// Version of the elasticsearch in Elastic cloud deployment.
  final String version;

  /// Creates a new [ListDeploymentInfoResult].
  /// [deploymentUrl] Deployment URL of the elasticsearch in Elastic cloud deployment.
  /// [diskCapacity] Disk capacity of the elasticsearch in Elastic cloud deployment.
  /// [elasticsearchEndPoint] Elasticsearch endpoint in Elastic cloud deployment. This is either the aliased_endpoint if available, or the service_url otherwise.
  /// [marketplaceSaasInfo] Marketplace SaaS Info of the resource.
  /// [memoryCapacity] RAM capacity of the elasticsearch in Elastic cloud deployment.
  /// [status] The Elastic deployment status.
  /// [version] Version of the elasticsearch in Elastic cloud deployment.
  const ListDeploymentInfoResult({
    required this.deploymentUrl,
    required this.diskCapacity,
    required this.elasticsearchEndPoint,
    required this.marketplaceSaasInfo,
    required this.memoryCapacity,
    required this.status,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentUrl': deploymentUrl,
      'diskCapacity': diskCapacity,
      'elasticsearchEndPoint': elasticsearchEndPoint,
      'marketplaceSaasInfo': marketplaceSaasInfo.toMap(),
      'memoryCapacity': memoryCapacity,
      'status': status,
      'version': version,
    };
  }

  factory ListDeploymentInfoResult.fromMap(Map<String, dynamic> map) {
    return ListDeploymentInfoResult(
      deploymentUrl: map['deploymentUrl'] as String,
      diskCapacity: map['diskCapacity'] as String,
      elasticsearchEndPoint: map['elasticsearchEndPoint'] as String,
      marketplaceSaasInfo: MarketplaceSaaSInfoResponse.fromMap((map['marketplaceSaasInfo']! as Map).cast<String, dynamic>()),
      memoryCapacity: map['memoryCapacity'] as String,
      status: map['status'] as String,
      version: map['version'] as String,
    );
  }
}

