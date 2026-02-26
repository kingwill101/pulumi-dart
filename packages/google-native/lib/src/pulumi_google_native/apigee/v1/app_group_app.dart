import 'package:pulumi/pulumi.dart';
import 'app_group_app_args.dart';
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_credential_response.dart';

/// Creates an app and associates it with an AppGroup. This API associates the AppGroup app with the specified API product and auto-generates an API key for the app to use in calls to API proxies inside that API product. The `name` is the unique ID of the app that you can use in API calls.
/// Auto-naming is currently not supported for this resource.
class AppGroupApp extends CustomResource {
  /// List of API products associated with the AppGroup app.
  late final Output<List<String>> apiProducts;

  /// Immutable. Name of the parent AppGroup whose resource name format is of syntax (organizations/*/appgroups/*).
  late final Output<String> appGroup;

  /// Immutable. ID of the AppGroup app.
  late final Output<String> appId;
  late final Output<String> appgroupId;

  /// List of attributes for the AppGroup app.
  late final Output<List<GoogleCloudApigeeV1AttributeResponse>> attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to AppGroup apps.
  late final Output<String> callbackUrl;

  /// Time the AppGroup app was created in milliseconds since epoch.
  late final Output<String> createdAt;

  /// Set of credentials for the AppGroup app consisting of the consumer key/secret pairs associated with the API products.
  late final Output<List<GoogleCloudApigeeV1CredentialResponse>> credentials;

  /// Immutable. Expiration time, in seconds, for the consumer key that is generated for the AppGroup app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  late final Output<String> keyExpiresIn;

  /// Time the AppGroup app was modified in milliseconds since epoch.
  late final Output<String> lastModifiedAt;

  /// Immutable. Name of the AppGroup app whose resource name format is of syntax (organizations/*/appgroups/*/apps/*).
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Scopes to apply to the AppGroup app. The specified scopes must already exist for the API product that you associate with the AppGroup app.
  late final Output<List<String>> scopes;

  /// Status of the App. Valid values include `approved` or `revoked`.
  late final Output<String> status;

  AppGroupApp(
    String name, {
    AppGroupAppArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:AppGroupApp',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiProducts = Output.createUnknown<List<String>>();
    this.appGroup = Output.createUnknown<String>();
    this.appId = Output.createUnknown<String>();
    this.appgroupId = Output.createUnknown<String>();
    this.attributes =
        Output.createUnknown<List<GoogleCloudApigeeV1AttributeResponse>>();
    this.callbackUrl = Output.createUnknown<String>();
    this.createdAt = Output.createUnknown<String>();
    this.credentials =
        Output.createUnknown<List<GoogleCloudApigeeV1CredentialResponse>>();
    this.keyExpiresIn = Output.createUnknown<String>();
    this.lastModifiedAt = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.organizationId = Output.createUnknown<String>();
    this.scopes = Output.createUnknown<List<String>>();
    this.status = Output.createUnknown<String>();
  }
}
