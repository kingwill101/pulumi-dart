// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_authorization_credential.dart';
import 'app_authorization_tenant.dart';
import 'app_authorization_timeouts.dart';

/// Input properties used for looking up and filtering AppAuthorization resources.
class AppAuthorizationState {
  /// Name of the application. For valid values, see the [CreateAppAuthorization API reference](https://docs.aws.amazon.com/appfabric/latest/api/API_CreateAppAuthorization.html).
  final pulumi.Input<String>? app;
  /// Amazon Resource Name (ARN) of the app bundle to use for the request.
  final pulumi.Input<String>? appBundleArn;
  /// ARN of the App Authorization.
  final pulumi.Input<String>? arn;
  /// Authorization type for the app authorization. Valid values are `oauth2` and `apiKey`.
  final pulumi.Input<String>? authType;
  /// Application URL for the OAuth flow.
  final pulumi.Input<String>? authUrl;
  /// Timestamp of when the app authorization was created.
  final pulumi.Input<String>? createdAt;
  /// Credentials for the application, such as an API key or OAuth2 client ID and secret. Specify credentials that match the authorization type for your request. For example, if the authorization type for your request is OAuth2 (`oauth2`), then you should provide only the OAuth2 credentials. See `credential` Block for details.
  final pulumi.Input<AppAuthorizationCredential>? credential;
  /// User persona of the app authorization.
  final pulumi.Input<String>? persona;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Information about an application tenant, such as the application display name and identifier. See `tenant` Block for details.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<AppAuthorizationTenant>>? tenants;
  final pulumi.Input<AppAuthorizationTimeouts>? timeouts;
  /// Timestamp of when the app authorization was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [AppAuthorizationState].
  /// [app] Name of the application. For valid values, see the [CreateAppAuthorization API reference](https://docs.aws.amazon.com/appfabric/latest/api/API_CreateAppAuthorization.html).
  /// [appBundleArn] Amazon Resource Name (ARN) of the app bundle to use for the request.
  /// [arn] ARN of the App Authorization.
  /// [authType] Authorization type for the app authorization. Valid values are `oauth2` and `apiKey`.
  /// [authUrl] Application URL for the OAuth flow.
  /// [createdAt] Timestamp of when the app authorization was created.
  /// [credential] Credentials for the application, such as an API key or OAuth2 client ID and secret. Specify credentials that match the authorization type for your request. For example, if the authorization type for your request is OAuth2 (`oauth2`), then you should provide only the OAuth2 credentials. See `credential` Block for details.
  /// [persona] User persona of the app authorization.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [tenants] Information about an application tenant, such as the application display name and identifier. See `tenant` Block for details.
  /// [timeouts] Optional.
  /// [updatedAt] Timestamp of when the app authorization was last updated.
  const AppAuthorizationState({
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
      app: (() { final guardedValue = map['app']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appBundleArn: (() { final guardedValue = map['appBundleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: (() { final guardedValue = map['authType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authUrl: (() { final guardedValue = map['authUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppAuthorizationCredential.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persona: (() { final guardedValue = map['persona']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tenants: (() { final guardedValue = map['tenants']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AppAuthorizationTenant>(guardedValue, (value) => AppAuthorizationTenant.fromMap((value as Map).cast<String, dynamic>()))); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AppAuthorizationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
