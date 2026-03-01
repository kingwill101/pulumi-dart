// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_authorization_connection_auth_request.dart';
import 'app_authorization_connection_timeouts.dart';

/// {@template pulumi_appfabric_app_authorization_connection_app_authorization_connection_args_doc}
/// The set of arguments for AppAuthorizationConnection.
/// {@endtemplate}
/// {@macro pulumi_appfabric_app_authorization_connection_app_authorization_connection_args_doc}
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

  /// Creates a new [AppAuthorizationConnectionArgs].
  /// [appAuthorizationArn] The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app authorization to use for the request.
  /// [appBundleArn] The Amazon Resource Name (ARN) of the app bundle to use for the request.
  /// [authRequest] Contains OAuth2 authorization information.This is required if the app authorization for the request is configured with an OAuth2 (oauth2) authorization type.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  AppAuthorizationConnectionArgs({
    required String appAuthorizationArn,
    required String appBundleArn,
    AppAuthorizationConnectionAuthRequest? authRequest,
    String? region,
    AppAuthorizationConnectionTimeouts? timeouts,
  }) :
      appAuthorizationArn = pulumi.Input.asInput<String>(appAuthorizationArn),
      appBundleArn = pulumi.Input.asInput<String>(appBundleArn),
      authRequest = pulumi.Input.asOptionalInput<AppAuthorizationConnectionAuthRequest>(authRequest),
      region = pulumi.Input.asOptionalInput<String>(region),
      timeouts = pulumi.Input.asOptionalInput<AppAuthorizationConnectionTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appAuthorizationArn': appAuthorizationArn,
      'appBundleArn': appBundleArn,
      'authRequest': ?pulumi.Input.mapOptionalInputValue<AppAuthorizationConnectionAuthRequest, Map<String, dynamic>>(authRequest, (value) => value.toMap()),
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AppAuthorizationConnectionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AppAuthorizationConnectionArgs.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationConnectionArgs(
      appAuthorizationArn: map['appAuthorizationArn'] as String,
      appBundleArn: map['appBundleArn'] as String,
      authRequest: map['authRequest'] == null ? null : AppAuthorizationConnectionAuthRequest.fromMap((map['authRequest'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      timeouts: map['timeouts'] == null ? null : AppAuthorizationConnectionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

