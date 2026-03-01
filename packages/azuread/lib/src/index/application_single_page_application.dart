// ignore_for_file: unused_element, unnecessary_cast


class ApplicationSinglePageApplication {
  /// A set of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. Must be a valid `https` URL.
  final List<String>? redirectUris;

  /// Creates a new [ApplicationSinglePageApplication].
  /// [redirectUris] A set of URLs where user tokens are sent for sign-in, or the redirect URIs where OAuth 2.0 authorization codes and access tokens are sent. Must be a valid `https` URL.
  ApplicationSinglePageApplication({
    this.redirectUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'redirectUris': ?redirectUris,
    };
  }

  factory ApplicationSinglePageApplication.fromMap(Map<String, dynamic> map) {
    return ApplicationSinglePageApplication(
      redirectUris: map['redirectUris'] == null ? null : (map['redirectUris'] as List).cast<String>(),
    );
  }
}

