// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getOpenIdConnectProvider.
class GetOpenIdConnectProviderResult {
  final String arn;
  /// List of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the clientId parameter on OAuth requests.)
  final List<String> clientIdLists;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Map of resource tags for the IAM OIDC provider.
  final Map<String, String> tags;
  /// List of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s).
  final List<String> thumbprintLists;
  final String url;

  /// Creates a new [GetOpenIdConnectProviderResult].
  /// [arn] Required.
  /// [clientIdLists] List of client IDs (also known as audiences). When a mobile or web app registers with an OpenID Connect provider, they establish a value that identifies the application. (This is the value that's sent as the clientId parameter on OAuth requests.)
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [tags] Map of resource tags for the IAM OIDC provider.
  /// [thumbprintLists] List of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s).
  /// [url] Required.
  const GetOpenIdConnectProviderResult({
    required this.arn,
    required this.clientIdLists,
    required this.id,
    required this.tags,
    required this.thumbprintLists,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'clientIdLists': clientIdLists,
      'id': id,
      'tags': tags,
      'thumbprintLists': thumbprintLists,
      'url': url,
    };
  }

  factory GetOpenIdConnectProviderResult.fromMap(Map<String, dynamic> map) {
    return GetOpenIdConnectProviderResult(
      arn: map['arn'] as String,
      clientIdLists: (map['clientIdLists'] as List).cast<String>(),
      id: map['id'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      thumbprintLists: (map['thumbprintLists'] as List).cast<String>(),
      url: map['url'] as String,
    );
  }
}
