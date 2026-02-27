import 'package:pulumi/pulumi.dart';
import '../app_authorization_credential/app_authorization_credential.dart';
import '../app_authorization_tenant/app_authorization_tenant.dart';
import '../app_authorization_timeouts/app_authorization_timeouts.dart';
import 'app_authorization_args.dart';

/// Resource for managing an AWS AppFabric App Authorization.
///
/// ## Example Usage
///
/// ### Basic Usage
class AppAuthorization extends CustomResource {
  /// The name of the application for valid values see https://docs.aws.amazon.com/appfabric/latest/api/API_CreateAppAuthorization.html.
  late final Output<String> app;

  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  late final Output<String> appBundleArn;

  /// ARN of the App Authorization. Do not begin the description with "An", "The", "Defines", "Indicates", or "Specifies," as these are verbose. In other words, "Indicates the amount of storage," can be rewritten as "Amount of storage," without losing any information.
  late final Output<String> arn;

  /// The authorization type for the app authorization valid values are oauth2 and apiKey.
  late final Output<String> authType;

  /// The application URL for the OAuth flow.
  late final Output<String> authUrl;
  late final Output<String> createdAt;

  /// Contains credentials for the application, such as an API key or OAuth2 client ID and secret.
  /// Specify credentials that match the authorization type for your request. For example, if the authorization type for your request is OAuth2 (oauth2), then you should provide only the OAuth2 credentials.
  late final Output<AppAuthorizationCredential> credential;

  /// The user persona of the app authorization.
  late final Output<String> persona;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// Contains information about an application tenant, such as the application display name and identifier.
  late final Output<List<AppAuthorizationTenant>> tenants;
  late final Output<AppAuthorizationTimeouts?> timeouts;
  late final Output<String> updatedAt;

  AppAuthorization(
    String name, {
    AppAuthorizationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appfabric/appAuthorization:AppAuthorization',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.app = registerOutput<String>('app');
    this.appBundleArn = registerOutput<String>('appBundleArn');
    this.arn = registerOutput<String>('arn');
    this.authType = registerOutput<String>('authType');
    this.authUrl = registerOutput<String>('authUrl');
    this.createdAt = registerOutput<String>('createdAt');
    this.credential = registerOutput<AppAuthorizationCredential>('credential');
    this.persona = registerOutput<String>('persona');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenants = registerOutput<List<AppAuthorizationTenant>>('tenants');
    this.timeouts = registerOutput<AppAuthorizationTimeouts?>('timeouts');
    this.updatedAt = registerOutput<String>('updatedAt');
  }
}
