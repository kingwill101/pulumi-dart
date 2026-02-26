import 'package:pulumi/pulumi.dart';
import 'developer_app_args.dart';
import 'google_cloud_apigee_v1_attribute_response.dart';
import 'google_cloud_apigee_v1_credential_response.dart';

/// Creates an app associated with a developer. This API associates the developer app with the specified API product and auto-generates an API key for the app to use in calls to API proxies inside that API product. The `name` is the unique ID of the app that you can use in API calls. The `DisplayName` (set as an attribute) appears in the UI. If you don't set the `DisplayName` attribute, the `name` appears in the UI.
class DeveloperApp extends CustomResource {
  /// List of API products associated with the developer app.
  late final Output<List<String>> apiProducts;

  /// Developer app family.
  late final Output<String> appFamily;

  /// ID of the developer app.
  late final Output<String> appId;

  /// List of attributes for the developer app.
  late final Output<List<GoogleCloudApigeeV1AttributeResponse>> attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate authorization codes back to developer apps.
  late final Output<String> callbackUrl;

  /// Time the developer app was created in milliseconds since epoch.
  late final Output<String> createdAt;

  /// Set of credentials for the developer app consisting of the consumer key/secret pairs associated with the API products.
  late final Output<List<GoogleCloudApigeeV1CredentialResponse>> credentials;
  late final Output<String> developerId;

  /// Expiration time, in milliseconds, for the consumer key that is generated for the developer app. If not set or left to the default value of `-1`, the API key never expires. The expiration time can't be updated after it is set.
  late final Output<String> keyExpiresIn;

  /// Time the developer app was modified in milliseconds since epoch.
  late final Output<String> lastModifiedAt;

  /// Name of the developer app.
  late final Output<String> name;
  late final Output<String> organizationId;

  /// Scopes to apply to the developer app. The specified scopes must already exist for the API product that you associate with the developer app.
  late final Output<List<String>> scopes;

  /// Status of the credential. Valid values include `approved` or `revoked`.
  late final Output<String> status;

  DeveloperApp(
    String name, {
    DeveloperAppArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:apigee/v1:DeveloperApp',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.apiProducts = registerOutput<List<String>>('apiProducts');
    this.appFamily = registerOutput<String>('appFamily');
    this.appId = registerOutput<String>('appId');
    this.attributes =
        registerOutput<List<GoogleCloudApigeeV1AttributeResponse>>(
            'attributes');
    this.callbackUrl = registerOutput<String>('callbackUrl');
    this.createdAt = registerOutput<String>('createdAt');
    this.credentials =
        registerOutput<List<GoogleCloudApigeeV1CredentialResponse>>(
            'credentials');
    this.developerId = registerOutput<String>('developerId');
    this.keyExpiresIn = registerOutput<String>('keyExpiresIn');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    this.organizationId = registerOutput<String>('organizationId');
    this.scopes = registerOutput<List<String>>('scopes');
    this.status = registerOutput<String>('status');
  }
}
