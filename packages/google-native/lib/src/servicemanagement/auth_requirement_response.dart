// ignore_for_file: unused_element, unnecessary_cast

/// User-defined authentication requirements, including support for [JSON Web Token (JWT)](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32).
class AuthRequirementResponse {
  /// NOTE: This will be deprecated soon, once AuthProvider.audiences is implemented and accepted in all the runtime components. The list of JWT [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3). that are allowed to access. A JWT containing any of these audiences will be accepted. When this setting is absent, only JWTs with audience "https://Service_name/API_name" will be accepted. For example, if no audiences are in the setting, LibraryService API will only accept JWTs with the following audience "https://library-example.googleapis.com/google.example.library.v1.LibraryService". Example: audiences: bookstore_android.apps.googleusercontent.com, bookstore_web.apps.googleusercontent.com
  final String audiences;

  /// id from authentication provider. Example: provider_id: bookstore_auth
  final String providerId;

  /// Creates a new [AuthRequirementResponse].
  /// [audiences] NOTE: This will be deprecated soon, once AuthProvider.audiences is implemented and accepted in all the runtime components. The list of JWT [audiences](https://tools.ietf.org/html/draft-ietf-oauth-json-web-token-32#section-4.1.3). that are allowed to access. A JWT containing any of these audiences will be accepted. When this setting is absent, only JWTs with audience "https://Service_name/API_name" will be accepted. For example, if no audiences are in the setting, LibraryService API will only accept JWTs with the following audience "https://library-example.googleapis.com/google.example.library.v1.LibraryService". Example: audiences: bookstore_android.apps.googleusercontent.com, bookstore_web.apps.googleusercontent.com
  /// [providerId] id from authentication provider. Example: provider_id: bookstore_auth
  AuthRequirementResponse({required this.audiences, required this.providerId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'audiences': audiences, 'providerId': providerId};
  }

  factory AuthRequirementResponse.fromMap(Map<String, dynamic> map) {
    return AuthRequirementResponse(
      audiences: map['audiences'] as String,
      providerId: map['providerId'] as String,
    );
  }
}
