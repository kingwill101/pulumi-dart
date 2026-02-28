import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_group_app_args.dart';
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_credential_response.dart';

/// Creates an app and associates it with an AppGroup. This API associates the AppGroup app with the specified API product and auto-generates an API key for the app to use in calls to API proxies inside that API product. The `name` is the unique ID of the app that you can use in API calls.
/// Auto-naming is currently not supported for this resource.
class AppGroupApp extends pulumi.CustomResource {
  /// List of API products associated with the AppGroup app.
  late final pulumi.Output<List<String>> apiProducts;
  /// Immutable. Name of the parent AppGroup whose resource name format is of syntax (organizations/*/appgroups/*).
  late final pulumi.Output<String> appGroup;
  /// Immutable. ID of the AppGroup app.
  late final pulumi.Output<String> appId;
  late final pulumi.Output<String> appgroupId;
  /// List of attributes for the AppGroup app.
  late final pulumi.Output<List<GoogleCloudApigeeV1AttributeResponse>> attributes;
  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to AppGroup apps.
  late final pulumi.Output<String> callbackUrl;
  /// Time the AppGroup app was created in milliseconds since epoch.
  late final pulumi.Output<String> createdAt;
  /// Set of credentials for the AppGroup app consisting of the consumer key/secret pairs associated with the API products.
  late final pulumi.Output<List<GoogleCloudApigeeV1CredentialResponse>> credentials;
  /// Immutable. Expiration time, in seconds, for the consumer key that is generated for the AppGroup app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  late final pulumi.Output<String> keyExpiresIn;
  /// Time the AppGroup app was modified in milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;
  /// Immutable. Name of the AppGroup app whose resource name format is of syntax (organizations/*/appgroups/*/apps/*).
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  /// Scopes to apply to the AppGroup app. The specified scopes must already exist for the API product that you associate with the AppGroup app.
  late final pulumi.Output<List<String>> scopes;
  /// Status of the App. Valid values include `approved` or `revoked`.
  late final pulumi.Output<String> status;

  /// Creates a new [AppGroupApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AppGroupApp]. {@macro pulumi_apigee_v1_app_group_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AppGroupApp(
    String name, {
    AppGroupAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:AppGroupApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiProducts = registerOutput<List<String>>('apiProducts');
    this.appGroup = registerOutput<String>('appGroup');
    this.appId = registerOutput<String>('appId');
    this.appgroupId = registerOutput<String>('appgroupId');
    this.attributes = registerOutput<List<GoogleCloudApigeeV1AttributeResponse>>('attributes');
    this.callbackUrl = registerOutput<String>('callbackUrl');
    this.createdAt = registerOutput<String>('createdAt');
    this.credentials = registerOutput<List<GoogleCloudApigeeV1CredentialResponse>>('credentials');
    this.keyExpiresIn = registerOutput<String>('keyExpiresIn');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.scopes = registerOutput<List<String>>('scopes');
    this.status = registerOutput<String>('status');
  }
}
