// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_authorization_connection_auth_request.dart';
import 'app_authorization_connection_tenant.dart';
import 'app_authorization_connection_timeouts.dart';

/// Input properties used for looking up and filtering AppAuthorizationConnection resources.
class AppAuthorizationConnectionState {
  /// The name of the application.
  final pulumi.Input<String>? app;

  /// The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app authorization to use for the request.
  final pulumi.Input<String>? appAuthorizationArn;

  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  final pulumi.Input<String>? appBundleArn;

  /// Contains OAuth2 authorization information.This is required if the app authorization for the request is configured with an OAuth2 (oauth2) authorization type.
  final pulumi.Input<AppAuthorizationConnectionAuthRequest>? authRequest;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Contains information about an application tenant, such as the application display name and identifier.
  final pulumi.Input<List<AppAuthorizationConnectionTenant>>? tenants;
  final pulumi.Input<AppAuthorizationConnectionTimeouts>? timeouts;

  /// Creates a new [AppAuthorizationConnectionState].
  /// [app] The name of the application.
  /// [appAuthorizationArn] The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app authorization to use for the request.
  /// [appBundleArn] The Amazon Resource Name (ARN) of the app bundle to use for the request.
  /// [authRequest] Contains OAuth2 authorization information.This is required if the app authorization for the request is configured with an OAuth2 (oauth2) authorization type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tenants] Contains information about an application tenant, such as the application display name and identifier.
  /// [timeouts] Optional.
  AppAuthorizationConnectionState({
    this.app,
    this.appAuthorizationArn,
    this.appBundleArn,
    this.authRequest,
    this.region,
    this.tenants,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': ?app,
      'appAuthorizationArn': ?appAuthorizationArn,
      'appBundleArn': ?appBundleArn,
      'authRequest':
          ?pulumi.Input.mapOptionalInputValue<
            AppAuthorizationConnectionAuthRequest,
            Map<String, dynamic>
          >(authRequest, (value) => value.toMap()),
      'region': ?region,
      'tenants':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppAuthorizationConnectionTenant>,
            List<Map<String, dynamic>>
          >(
            tenants,
            (value) =>
                pulumi.Input.encodeList<
                  AppAuthorizationConnectionTenant,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'timeouts':
          ?pulumi.Input.mapOptionalInputValue<
            AppAuthorizationConnectionTimeouts,
            Map<String, dynamic>
          >(timeouts, (value) => value.toMap()),
    };
  }

  factory AppAuthorizationConnectionState.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationConnectionState(
      app: (() {
        final guardedValue = map['app'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appAuthorizationArn: (() {
        final guardedValue = map['appAuthorizationArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      appBundleArn: (() {
        final guardedValue = map['appBundleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authRequest: (() {
        final guardedValue = map['authRequest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppAuthorizationConnectionAuthRequest.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenants: (() {
        final guardedValue = map['tenants'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppAuthorizationConnectionTenant>(
            guardedValue,
            (value) => AppAuthorizationConnectionTenant.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      timeouts: (() {
        final guardedValue = map['timeouts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppAuthorizationConnectionTimeouts.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
