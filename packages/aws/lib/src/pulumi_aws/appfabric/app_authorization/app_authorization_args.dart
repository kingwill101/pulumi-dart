// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_authorization_credential/app_authorization_credential.dart';
import '../app_authorization_tenant/app_authorization_tenant.dart';
import '../app_authorization_timeouts/app_authorization_timeouts.dart';

/// The set of arguments for AppAuthorization.
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

  AppAuthorizationArgs({
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
    final map = <String, dynamic>{};
    map['app'] = app;
    map['appBundleArn'] = appBundleArn;
    map['authType'] = authType;
    map['credential'] = pulumi.Input.mapInputValue<AppAuthorizationCredential,
        Map<String, dynamic>>(credential, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['tenants'] = pulumi.Input.mapInputValue<List<AppAuthorizationTenant>,
            List<Map<String, dynamic>>>(
        tenants,
        (value) => pulumi.Input.encodeList<AppAuthorizationTenant,
            Map<String, dynamic>>(value, (value) => value.toMap()));
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          AppAuthorizationTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AppAuthorizationArgs.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationArgs(
      app: pulumi.Input.asInput<String>(map['app']),
      appBundleArn: pulumi.Input.asInput<String>(map['appBundleArn']),
      authType: pulumi.Input.asInput<String>(map['authType']),
      credential:
          pulumi.Input.asInput<AppAuthorizationCredential>(map['credential']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      tenants:
          pulumi.Input.asInput<List<AppAuthorizationTenant>>(map['tenants']),
      timeouts: pulumi.Input.asOptionalInput<AppAuthorizationTimeouts>(
          map['timeouts']),
    );
  }
}
