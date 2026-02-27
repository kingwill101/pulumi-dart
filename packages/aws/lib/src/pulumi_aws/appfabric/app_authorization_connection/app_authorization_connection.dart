import 'package:pulumi/pulumi.dart';
import '../app_authorization_connection_auth_request/app_authorization_connection_auth_request.dart';
import '../app_authorization_connection_tenant/app_authorization_connection_tenant.dart';
import '../app_authorization_connection_timeouts/app_authorization_connection_timeouts.dart';
import 'app_authorization_connection_args.dart';

/// Resource for managing an AWS AppFabric App Authorization Connection.
///
/// ## Example Usage
///
/// ### Basic Usage
class AppAuthorizationConnection extends CustomResource {
  /// The name of the application.
  late final Output<String> app;

  /// The Amazon Resource Name (ARN) or Universal Unique Identifier (UUID) of the app authorization to use for the request.
  late final Output<String> appAuthorizationArn;

  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  late final Output<String> appBundleArn;

  /// Contains OAuth2 authorization information.This is required if the app authorization for the request is configured with an OAuth2 (oauth2) authorization type.
  late final Output<AppAuthorizationConnectionAuthRequest?> authRequest;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Contains information about an application tenant, such as the application display name and identifier.
  late final Output<List<AppAuthorizationConnectionTenant>> tenants;
  late final Output<AppAuthorizationConnectionTimeouts?> timeouts;

  AppAuthorizationConnection(
    String name, {
    AppAuthorizationConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/appAuthorizationConnection:AppAuthorizationConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.appAuthorizationArn = registerOutput<String>('appAuthorizationArn');
    this.appBundleArn = registerOutput<String>('appBundleArn');
    this.authRequest =
        registerOutput<AppAuthorizationConnectionAuthRequest?>('authRequest');
    this.region = registerOutput<String>('region');
    this.tenants =
        registerOutput<List<AppAuthorizationConnectionTenant>>('tenants');
    this.timeouts =
        registerOutput<AppAuthorizationConnectionTimeouts?>('timeouts');
  }
}
