// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of AuthenticateCognitoConfig
class AuthenticateCognitoConfigResponse {
  /// The query parameters (up to 10) to include in the redirect request to the authorization endpoint.
  final pulumi.Input<Map<String, String>>? authenticationRequestExtraParams;

  /// The behavior if the user is not authenticated. The following are possible values:  +  deny```` - Return an HTTP 401 Unauthorized error.  +  allow```` - Allow the request to be forwarded to the target.  +  authenticate```` - Redirect the request to the IdP authorization endpoint. This is the default value.
  final pulumi.Input<String>? onUnauthenticatedRequest;

  /// The set of user claims to be requested from the IdP. The default is ``openid``. To verify which scope values your IdP supports and how to separate multiple values, see the documentation for your IdP.
  final pulumi.Input<String>? scope;

  /// The name of the cookie used to maintain session information. The default is AWSELBAuthSessionCookie.
  final pulumi.Input<String>? sessionCookieName;

  /// The maximum duration of the authentication session, in seconds. The default is 604800 seconds (7 days).
  final pulumi.Input<String>? sessionTimeout;

  /// The Amazon Resource Name (ARN) of the Amazon Cognito user pool.
  final pulumi.Input<String>? userPoolArn;

  /// The ID of the Amazon Cognito user pool client.
  final pulumi.Input<String>? userPoolClientId;

  /// The domain prefix or fully-qualified domain name of the Amazon Cognito user pool.
  final pulumi.Input<String>? userPoolDomain;

  /// Creates a new [AuthenticateCognitoConfigResponse].
  /// [authenticationRequestExtraParams] The query parameters (up to 10) to include in the redirect request to the authorization endpoint.
  /// [onUnauthenticatedRequest] The behavior if the user is not authenticated. The following are possible values:  +  deny```` - Return an HTTP 401 Unauthorized error.  +  allow```` - Allow the request to be forwarded to the target.  +  authenticate```` - Redirect the request to the IdP authorization endpoint. This is the default value.
  /// [scope] The set of user claims to be requested from the IdP. The default is ``openid``. To verify which scope values your IdP supports and how to separate multiple values, see the documentation for your IdP.
  /// [sessionCookieName] The name of the cookie used to maintain session information. The default is AWSELBAuthSessionCookie.
  /// [sessionTimeout] The maximum duration of the authentication session, in seconds. The default is 604800 seconds (7 days).
  /// [userPoolArn] The Amazon Resource Name (ARN) of the Amazon Cognito user pool.
  /// [userPoolClientId] The ID of the Amazon Cognito user pool client.
  /// [userPoolDomain] The domain prefix or fully-qualified domain name of the Amazon Cognito user pool.
  AuthenticateCognitoConfigResponse({
    this.authenticationRequestExtraParams,
    this.onUnauthenticatedRequest,
    this.scope,
    this.sessionCookieName,
    this.sessionTimeout,
    this.userPoolArn,
    this.userPoolClientId,
    this.userPoolDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationRequestExtraParams': ?authenticationRequestExtraParams,
      'onUnauthenticatedRequest': ?onUnauthenticatedRequest,
      'scope': ?scope,
      'sessionCookieName': ?sessionCookieName,
      'sessionTimeout': ?sessionTimeout,
      'userPoolArn': ?userPoolArn,
      'userPoolClientId': ?userPoolClientId,
      'userPoolDomain': ?userPoolDomain,
    };
  }

  factory AuthenticateCognitoConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthenticateCognitoConfigResponse(
      authenticationRequestExtraParams: (() {
        final guardedValue = map['authenticationRequestExtraParams'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      onUnauthenticatedRequest: (() {
        final guardedValue = map['onUnauthenticatedRequest'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionCookieName: (() {
        final guardedValue = map['sessionCookieName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sessionTimeout: (() {
        final guardedValue = map['sessionTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userPoolArn: (() {
        final guardedValue = map['userPoolArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userPoolClientId: (() {
        final guardedValue = map['userPoolClientId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userPoolDomain: (() {
        final guardedValue = map['userPoolDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
