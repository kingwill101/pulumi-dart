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
    pulumi.Output<String>? app,
    pulumi.Output<String>? appAuthorizationArn,
    pulumi.Output<String>? appBundleArn,
    pulumi.Output<AppAuthorizationConnectionAuthRequest>? authRequest,
    pulumi.Output<String>? region,
    pulumi.Output<List<AppAuthorizationConnectionTenant>>? tenants,
    pulumi.Output<AppAuthorizationConnectionTimeouts>? timeouts,
  }) :
      app = pulumi.Input.asOptionalInput<String>(app),
      appAuthorizationArn = pulumi.Input.asOptionalInput<String>(appAuthorizationArn),
      appBundleArn = pulumi.Input.asOptionalInput<String>(appBundleArn),
      authRequest = pulumi.Input.asOptionalInput<AppAuthorizationConnectionAuthRequest>(authRequest),
      region = pulumi.Input.asOptionalInput<String>(region),
      tenants = pulumi.Input.asOptionalInput<List<AppAuthorizationConnectionTenant>>(tenants),
      timeouts = pulumi.Input.asOptionalInput<AppAuthorizationConnectionTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': ?app,
      'appAuthorizationArn': ?appAuthorizationArn,
      'appBundleArn': ?appBundleArn,
      'authRequest': ?pulumi.Input.mapOptionalInputValue<AppAuthorizationConnectionAuthRequest, Map<String, dynamic>>(authRequest, (value) => value.toMap()),
      'region': ?region,
      'tenants': ?pulumi.Input.mapOptionalInputValue<List<AppAuthorizationConnectionTenant>, List<Map<String, dynamic>>>(tenants, (value) => pulumi.Input.encodeList<AppAuthorizationConnectionTenant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AppAuthorizationConnectionTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AppAuthorizationConnectionState.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationConnectionState(
      app: map['app'] == null ? null : pulumi.Output.create<String>(map['app'] as String),
      appAuthorizationArn: map['appAuthorizationArn'] == null ? null : pulumi.Output.create<String>(map['appAuthorizationArn'] as String),
      appBundleArn: map['appBundleArn'] == null ? null : pulumi.Output.create<String>(map['appBundleArn'] as String),
      authRequest: map['authRequest'] == null ? null : pulumi.Output.create<AppAuthorizationConnectionAuthRequest>(AppAuthorizationConnectionAuthRequest.fromMap((map['authRequest'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tenants: map['tenants'] == null ? null : pulumi.Output.create<List<AppAuthorizationConnectionTenant>>(pulumi.Input.decodeList<AppAuthorizationConnectionTenant>(map['tenants'], (value) => AppAuthorizationConnectionTenant.fromMap((value as Map).cast<String, dynamic>()))),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AppAuthorizationConnectionTimeouts>(AppAuthorizationConnectionTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

