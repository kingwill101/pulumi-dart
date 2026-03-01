// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_authorization_credential.dart';
import 'app_authorization_tenant.dart';
import 'app_authorization_timeouts.dart';

/// {@template pulumi_appfabric_app_authorization_app_authorization_args_doc}
/// The set of arguments for AppAuthorization.
/// {@endtemplate}
/// {@macro pulumi_appfabric_app_authorization_app_authorization_args_doc}
class AppAuthorizationArgs {
  /// The name of the application for valid values see https://docs.aws.amazon.com/appfabric/latest/api/API_CreateAppAuthorization.html.
  final pulumi.Input<String> app;
  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  final pulumi.Input<String> appBundleArn;
  /// The authorization type for the app authorization valid values are oauth2 and apiKey.
  final pulumi.Input<String> authType;
  /// Contains credentials for the application, such as an API key or OAuth2 client ID and secret.
  /// Specify credentials that match the authorization type for your request. For example, if the authorization type for your request is OAuth2 (oauth2), then you should provide only the OAuth2 credentials.
  final pulumi.Input<AppAuthorizationCredential> credential;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  /// Contains information about an application tenant, such as the application display name and identifier.
  final pulumi.Input<List<AppAuthorizationTenant>> tenants;
  final pulumi.Input<AppAuthorizationTimeouts>? timeouts;

  /// Creates a new [AppAuthorizationArgs].
  /// [app] The name of the application for valid values see https://docs.aws.amazon.com/appfabric/latest/api/API_CreateAppAuthorization.html.
  /// [appBundleArn] The Amazon Resource Name (ARN) of the app bundle to use for the request.
  /// [authType] The authorization type for the app authorization valid values are oauth2 and apiKey.
  /// [credential] Contains credentials for the application, such as an API key or OAuth2 client ID and secret.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [tenants] Contains information about an application tenant, such as the application display name and identifier.
  /// [timeouts] Optional.
  AppAuthorizationArgs({
    required pulumi.Output<String> app,
    required pulumi.Output<String> appBundleArn,
    required pulumi.Output<String> authType,
    required pulumi.Output<AppAuthorizationCredential> credential,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<List<AppAuthorizationTenant>> tenants,
    pulumi.Output<AppAuthorizationTimeouts>? timeouts,
  }) :
      app = pulumi.Input.asInput<String>(app),
      appBundleArn = pulumi.Input.asInput<String>(appBundleArn),
      authType = pulumi.Input.asInput<String>(authType),
      credential = pulumi.Input.asInput<AppAuthorizationCredential>(credential),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tenants = pulumi.Input.asInput<List<AppAuthorizationTenant>>(tenants),
      timeouts = pulumi.Input.asOptionalInput<AppAuthorizationTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': app,
      'appBundleArn': appBundleArn,
      'authType': authType,
      'credential': pulumi.Input.mapInputValue<AppAuthorizationCredential, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'tenants': pulumi.Input.mapInputValue<List<AppAuthorizationTenant>, List<Map<String, dynamic>>>(tenants, (value) => pulumi.Input.encodeList<AppAuthorizationTenant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AppAuthorizationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory AppAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationArgs(
      app: pulumi.Output.create<String>(map['app'] as String),
      appBundleArn: pulumi.Output.create<String>(map['appBundleArn'] as String),
      authType: pulumi.Output.create<String>(map['authType'] as String),
      credential: pulumi.Output.create<AppAuthorizationCredential>(AppAuthorizationCredential.fromMap((map['credential'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tenants: pulumi.Output.create<List<AppAuthorizationTenant>>(pulumi.Input.decodeList<AppAuthorizationTenant>(map['tenants'], (value) => AppAuthorizationTenant.fromMap((value as Map).cast<String, dynamic>()))),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AppAuthorizationTimeouts>(AppAuthorizationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

