// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'unauthenticated_client_action_v2.dart';

/// The configuration settings that determines the validation flow of users using ContainerApp Service Authentication/Authorization.
class GlobalValidation {
  /// The paths for which unauthenticated flow would not be redirected to the login page.
  final pulumi.Input<List<String>>? excludedPaths;
  /// The default authentication provider to use when multiple providers are configured.
  /// This setting is only needed if multiple providers are configured and the unauthenticated client
  /// action is set to "RedirectToLoginPage".
  final pulumi.Input<String>? redirectToProvider;
  /// The action to take when an unauthenticated client attempts to access the app.
  final pulumi.Input<UnauthenticatedClientActionV2>? unauthenticatedClientAction;

  /// Creates a new [GlobalValidation].
  /// [excludedPaths] The paths for which unauthenticated flow would not be redirected to the login page.
  /// [redirectToProvider] The default authentication provider to use when multiple providers are configured.
  /// [unauthenticatedClientAction] The action to take when an unauthenticated client attempts to access the app.
  GlobalValidation({
    this.excludedPaths,
    this.redirectToProvider,
    this.unauthenticatedClientAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedPaths': ?excludedPaths,
      'redirectToProvider': ?redirectToProvider,
      'unauthenticatedClientAction': ?pulumi.Input.mapOptionalInputValue<UnauthenticatedClientActionV2, String>(unauthenticatedClientAction, (value) => value.value),
    };
  }

  factory GlobalValidation.fromMap(Map<String, dynamic> map) {
    return GlobalValidation(
      excludedPaths: map['excludedPaths'] == null ? null : ((map['excludedPaths']! as List).cast<String>()).input(),
      redirectToProvider: map['redirectToProvider'] == null ? null : (map['redirectToProvider']! as String).input(),
      unauthenticatedClientAction: map['unauthenticatedClientAction'] == null ? null : (UnauthenticatedClientActionV2.fromValue(map['unauthenticatedClientAction']! as String)).input(),
    );
  }
}

