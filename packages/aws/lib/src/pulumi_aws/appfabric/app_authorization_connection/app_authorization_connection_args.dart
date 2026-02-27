// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_authorization_connection_auth_request/app_authorization_connection_auth_request.dart';
import '../app_authorization_connection_timeouts/app_authorization_connection_timeouts.dart';

/// The set of arguments for AppAuthorizationConnection.
class AppAuthorizationConnectionArgs {
  /// The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app authorization to use for the request.
  final pulumi.Input<String> appAuthorizationArn;

  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  final pulumi.Input<String> appBundleArn;

  /// Contains OAuth2 authorization information.This is required if the app authorization for the request is configured with an OAuth2 (oauth2) authorization type.
  final pulumi.Input<AppAuthorizationConnectionAuthRequest>? authRequest;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<AppAuthorizationConnectionTimeouts>? timeouts;

  AppAuthorizationConnectionArgs({
    required this.appAuthorizationArn,
    required this.appBundleArn,
    this.authRequest,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appAuthorizationArn'] = appAuthorizationArn;
    map['appBundleArn'] = appBundleArn;
    final authRequestValue = authRequest;
    if (authRequestValue != null) {
      map['authRequest'] = pulumi.Input.mapOptionalInputValue<
          AppAuthorizationConnectionAuthRequest,
          Map<String, dynamic>>(authRequestValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AppAuthorizationConnectionTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppAuthorizationConnectionArgs.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationConnectionArgs(
      appAuthorizationArn:
          pulumi.Input.asInput<String>(map['appAuthorizationArn']),
      appBundleArn: pulumi.Input.asInput<String>(map['appBundleArn']),
      authRequest:
          pulumi.Input.asOptionalInput<AppAuthorizationConnectionAuthRequest>(
              map['authRequest']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      timeouts:
          pulumi.Input.asOptionalInput<AppAuthorizationConnectionTimeouts>(
              map['timeouts']),
    );
  }
}
