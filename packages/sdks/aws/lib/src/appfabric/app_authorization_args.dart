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
  const AppAuthorizationArgs({
    required this.app,
    required this.appBundleArn,
    required this.authType,
    required this.credential,
    this.region,
    this.tags,
    required this.tenants,
    this.timeouts,
  });

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
      app: pulumi.Input.fromValue(map['app'] as String),
      appBundleArn: pulumi.Input.fromValue(map['appBundleArn'] as String),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      credential: pulumi.Input.fromValue(AppAuthorizationCredential.fromMap((map['credential']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenants: pulumi.Input.fromValue(pulumi.Input.decodeList<AppAuthorizationTenant>(map['tenants']!, (value) => AppAuthorizationTenant.fromMap((value as Map).cast<String, dynamic>()))),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppAuthorizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

