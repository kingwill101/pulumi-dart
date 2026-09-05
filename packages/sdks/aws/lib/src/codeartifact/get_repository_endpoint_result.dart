// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRepositoryEndpoint.
class GetRepositoryEndpointResult {
  final String? domain;
  final String? domainOwner;
  final String? format;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  final String? repository;
  /// URL of the returned endpoint.
  final String? repositoryEndpoint;

  /// Creates a new [GetRepositoryEndpointResult].
  /// [domain] Optional.
  /// [domainOwner] Optional.
  /// [format] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [repository] Optional.
  /// [repositoryEndpoint] URL of the returned endpoint.
  const GetRepositoryEndpointResult({
    this.domain,
    this.domainOwner,
    this.format,
    this.id,
    this.region,
    this.repository,
    this.repositoryEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'domainOwner': ?domainOwner,
      'format': ?format,
      'id': ?id,
      'region': ?region,
      'repository': ?repository,
      'repositoryEndpoint': ?repositoryEndpoint,
    };
  }

  factory GetRepositoryEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoryEndpointResult(
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      domainOwner: (() { final guardedValue = map['domainOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repository: (() { final guardedValue = map['repository']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryEndpoint: (() { final guardedValue = map['repositoryEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
