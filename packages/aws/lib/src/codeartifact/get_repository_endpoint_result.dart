// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRepositoryEndpoint.
class GetRepositoryEndpointResult {
  final String domain;
  final String domainOwner;
  final String format;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String repository;

  /// URL of the returned endpoint.
  final String repositoryEndpoint;

  /// Creates a new [GetRepositoryEndpointResult].
  /// [domain] Required.
  /// [domainOwner] Required.
  /// [format] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [repository] Required.
  /// [repositoryEndpoint] URL of the returned endpoint.
  GetRepositoryEndpointResult({
    required this.domain,
    required this.domainOwner,
    required this.format,
    required this.id,
    required this.region,
    required this.repository,
    required this.repositoryEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'domainOwner': domainOwner,
      'format': format,
      'id': id,
      'region': region,
      'repository': repository,
      'repositoryEndpoint': repositoryEndpoint,
    };
  }

  factory GetRepositoryEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryEndpointResult(
      domain: map['domain'] as String,
      domainOwner: map['domainOwner'] as String,
      format: map['format'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      repository: map['repository'] as String,
      repositoryEndpoint: map['repositoryEndpoint'] as String,
    );
  }
}
