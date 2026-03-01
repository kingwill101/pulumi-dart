// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings that determines the validation flow of users using App Service Authentication/Authorization.
class GlobalValidationResponse {
  /// The paths for which unauthenticated flow would not be redirected to the login page.
  final List<String>? excludedPaths;
  /// The default authentication provider to use when multiple providers are configured.
  /// This setting is only needed if multiple providers are configured and the unauthenticated client
  /// action is set to "RedirectToLoginPage".
  final String? redirectToProvider;
  /// <code>true</code> if the authentication flow is required any request is made; otherwise, <code>false</code>.
  final bool? requireAuthentication;
  /// The action to take when an unauthenticated client attempts to access the app.
  final String? unauthenticatedClientAction;

  /// Creates a new [GlobalValidationResponse].
  /// [excludedPaths] The paths for which unauthenticated flow would not be redirected to the login page.
  /// [redirectToProvider] The default authentication provider to use when multiple providers are configured.
  /// [requireAuthentication] <code>true</code> if the authentication flow is required any request is made; otherwise, <code>false</code>.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app.
  GlobalValidationResponse({
    this.excludedPaths,
    this.redirectToProvider,
    this.requireAuthentication,
    this.unauthenticatedClientAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedPaths': ?excludedPaths,
      'redirectToProvider': ?redirectToProvider,
      'requireAuthentication': ?requireAuthentication,
      'unauthenticatedClientAction': ?unauthenticatedClientAction,
    };
  }

  factory GlobalValidationResponse.fromMap(Map<String, dynamic> map) {
    return GlobalValidationResponse(
      excludedPaths: map['excludedPaths'] == null ? null : (map['excludedPaths'] as List).cast<String>(),
      redirectToProvider: map['redirectToProvider'] == null ? null : map['redirectToProvider'] as String,
      requireAuthentication: map['requireAuthentication'] == null ? null : map['requireAuthentication'] as bool,
      unauthenticatedClientAction: map['unauthenticatedClientAction'] == null ? null : map['unauthenticatedClientAction'] as String,
    );
  }
}

