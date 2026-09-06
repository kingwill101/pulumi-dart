// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings that determines the validation flow of users using ContainerApp Service Authentication/Authorization.
class GlobalValidationResponse {
  /// The paths for which unauthenticated flow would not be redirected to the login page.
  final pulumi.Input<List<String>?>? excludedPaths;
  /// The default authentication provider to use when multiple providers are configured.
  /// This setting is only needed if multiple providers are configured and the unauthenticated client
  /// action is set to "RedirectToLoginPage".
  final pulumi.Input<String?>? redirectToProvider;
  /// The action to take when an unauthenticated client attempts to access the app.
  final pulumi.Input<String?>? unauthenticatedClientAction;

  /// Creates a new [GlobalValidationResponse].
  /// [excludedPaths] The paths for which unauthenticated flow would not be redirected to the login page.
  /// [redirectToProvider] The default authentication provider to use when multiple providers are configured.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app.
  const GlobalValidationResponse({
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
      excludedPaths: (() { final guardedValue = map['excludedPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      redirectToProvider: (() { final guardedValue = map['redirectToProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unauthenticatedClientAction: (() { final guardedValue = map['unauthenticatedClientAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
