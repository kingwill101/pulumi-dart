// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings that determines the validation flow of users using ContainerApp Service Authentication/Authorization.
class GlobalValidationResponse {
  /// The paths for which unauthenticated flow would not be redirected to the login page.
  final List<String>? excludedPaths;
  /// The default authentication provider to use when multiple providers are configured.
  /// This setting is only needed if multiple providers are configured and the unauthenticated client
  /// action is set to "RedirectToLoginPage".
  final String? redirectToProvider;
  /// The action to take when an unauthenticated client attempts to access the app.
  final String? unauthenticatedClientAction;

  /// Creates a new [GlobalValidationResponse].
  /// [excludedPaths] The paths for which unauthenticated flow would not be redirected to the login page.
  /// [redirectToProvider] The default authentication provider to use when multiple providers are configured.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app.
  GlobalValidationResponse({
    this.excludedPaths,
    this.redirectToProvider,
    this.unauthenticatedClientAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedPaths': ?excludedPaths,
      'redirectToProvider': ?redirectToProvider,
      'unauthenticatedClientAction': ?unauthenticatedClientAction,
    };
  }

  factory GlobalValidationResponse.fromMap(Map<String, dynamic> map) {
    return GlobalValidationResponse(
      excludedPaths: map['excludedPaths'] == null ? null : (map['excludedPaths'] as List).cast<String>(),
      redirectToProvider: map['redirectToProvider'] == null ? null : map['redirectToProvider'] as String,
      unauthenticatedClientAction: map['unauthenticatedClientAction'] == null ? null : map['unauthenticatedClientAction'] as String,
    );
  }
}

