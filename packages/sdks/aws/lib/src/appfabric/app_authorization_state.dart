// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_authorization_credential.dart';
import 'app_authorization_tenant.dart';
import 'app_authorization_timeouts.dart';

/// Input properties used for looking up and filtering AppAuthorization resources.
class AppAuthorizationState {
  /// The name of the application for valid values see https://docs.aws.amazon.com/appfabric/latest/api/API_CreateAppAuthorization.html.
  final pulumi.Input<String>? app;
  /// The Amazon Resource Name (ARN) of the app bundle to use for the request.
  final pulumi.Input<String>? appBundleArn;
  /// ARN of the App Authorization. Do not begin the description with "An", "The", "Defines", "Indicates", or "Specifies," as these are verbose. In other words, "Indicates the amount of storage," can be rewritten as "Amount of storage," without losing any information.
  final pulumi.Input<String>? arn;
  /// The authorization type for the app authorization valid values are oauth2 and apiKey.
  final pulumi.Input<String>? authType;
  /// The application URL for the OAuth flow.
  final pulumi.Input<String>? authUrl;
  final pulumi.Input<String>? createdAt;
  /// Contains credentials for the application, such as an API key or OAuth2 client ID and secret.
  /// Specify credentials that match the authorization type for your request. For example, if the authorization type for your request is OAuth2 (oauth2), then you should provide only the OAuth2 credentials.
  final pulumi.Input<AppAuthorizationCredential>? credential;
  /// The user persona of the app authorization.
  final pulumi.Input<String>? persona;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Contains information about an application tenant, such as the application display name and identifier.
  final pulumi.Input<List<AppAuthorizationTenant>>? tenants;
  final pulumi.Input<AppAuthorizationTimeouts>? timeouts;
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [AppAuthorizationState].
  /// [app] The name of the application for valid values see https://docs.aws.amazon.com/appfabric/latest/api/API_CreateAppAuthorization.html.
  /// [appBundleArn] The Amazon Resource Name (ARN) of the app bundle to use for the request.
  /// [arn] ARN of the App Authorization. Do not begin the description with "An", "The", "Defines", "Indicates", or "Specifies," as these are verbose. In other words, "Indicates the amount of storage," can be rewritten as "Amount of storage," without losing any information.
  /// [authType] The authorization type for the app authorization valid values are oauth2 and apiKey.
  /// [authUrl] The application URL for the OAuth flow.
  /// [createdAt] Optional.
  /// [credential] Contains credentials for the application, such as an API key or OAuth2 client ID and secret.
  /// [persona] The user persona of the app authorization.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  /// [tenants] Contains information about an application tenant, such as the application display name and identifier.
  /// [timeouts] Optional.
  /// [updatedAt] Optional.
  AppAuthorizationState({
    this.app,
    this.appBundleArn,
    this.arn,
    this.authType,
    this.authUrl,
    this.createdAt,
    this.credential,
    this.persona,
    this.region,
    this.tags,
    this.tagsAll,
    this.tenants,
    this.timeouts,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'app': ?app,
      'appBundleArn': ?appBundleArn,
      'arn': ?arn,
      'authType': ?authType,
      'authUrl': ?authUrl,
      'createdAt': ?createdAt,
      'credential': ?pulumi.Input.mapOptionalInputValue<AppAuthorizationCredential, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'persona': ?persona,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'tenants': ?pulumi.Input.mapOptionalInputValue<List<AppAuthorizationTenant>, List<Map<String, dynamic>>>(tenants, (value) => pulumi.Input.encodeList<AppAuthorizationTenant, Map<String, dynamic>>(value, (value) => value.toMap())),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<AppAuthorizationTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'updatedAt': ?updatedAt,
    };
  }

  factory AppAuthorizationState.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationState(
      app: map['app'] == null ? null : (map['app'] as String).input(),
      appBundleArn: map['appBundleArn'] == null ? null : (map['appBundleArn'] as String).input(),
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      authType: map['authType'] == null ? null : (map['authType'] as String).input(),
      authUrl: map['authUrl'] == null ? null : (map['authUrl'] as String).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt'] as String).input(),
      credential: map['credential'] == null ? null : (AppAuthorizationCredential.fromMap((map['credential'] as Map).cast<String, dynamic>())).input(),
      persona: map['persona'] == null ? null : (map['persona'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      tenants: map['tenants'] == null ? null : (pulumi.Input.decodeList<AppAuthorizationTenant>(map['tenants'], (value) => AppAuthorizationTenant.fromMap((value as Map).cast<String, dynamic>()))).input(),
      timeouts: map['timeouts'] == null ? null : (AppAuthorizationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt'] as String).input(),
    );
  }
}

