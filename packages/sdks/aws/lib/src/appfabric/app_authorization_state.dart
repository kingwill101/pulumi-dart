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
    pulumi.Output<String>? app,
    pulumi.Output<String>? appBundleArn,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? authType,
    pulumi.Output<String>? authUrl,
    pulumi.Output<String>? createdAt,
    pulumi.Output<AppAuthorizationCredential>? credential,
    pulumi.Output<String>? persona,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<List<AppAuthorizationTenant>>? tenants,
    pulumi.Output<AppAuthorizationTimeouts>? timeouts,
    pulumi.Output<String>? updatedAt,
  }) :
      app = pulumi.Input.asOptionalInput<String>(app),
      appBundleArn = pulumi.Input.asOptionalInput<String>(appBundleArn),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      authType = pulumi.Input.asOptionalInput<String>(authType),
      authUrl = pulumi.Input.asOptionalInput<String>(authUrl),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      credential = pulumi.Input.asOptionalInput<AppAuthorizationCredential>(credential),
      persona = pulumi.Input.asOptionalInput<String>(persona),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      tenants = pulumi.Input.asOptionalInput<List<AppAuthorizationTenant>>(tenants),
      timeouts = pulumi.Input.asOptionalInput<AppAuthorizationTimeouts>(timeouts),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

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
      app: map['app'] == null ? null : pulumi.Output.create<String>(map['app'] as String),
      appBundleArn: map['appBundleArn'] == null ? null : pulumi.Output.create<String>(map['appBundleArn'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      authType: map['authType'] == null ? null : pulumi.Output.create<String>(map['authType'] as String),
      authUrl: map['authUrl'] == null ? null : pulumi.Output.create<String>(map['authUrl'] as String),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      credential: map['credential'] == null ? null : pulumi.Output.create<AppAuthorizationCredential>(AppAuthorizationCredential.fromMap((map['credential'] as Map).cast<String, dynamic>())),
      persona: map['persona'] == null ? null : pulumi.Output.create<String>(map['persona'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      tenants: map['tenants'] == null ? null : pulumi.Output.create<List<AppAuthorizationTenant>>(pulumi.Input.decodeList<AppAuthorizationTenant>(map['tenants'], (value) => AppAuthorizationTenant.fromMap((value as Map).cast<String, dynamic>()))),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<AppAuthorizationTimeouts>(AppAuthorizationTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}

