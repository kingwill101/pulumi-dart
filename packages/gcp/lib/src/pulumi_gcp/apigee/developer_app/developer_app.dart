import 'package:pulumi/pulumi.dart' as pulumi;
import '../developer_app_attribute/developer_app_attribute.dart';
import '../developer_app_credential/developer_app_credential.dart';
import 'developer_app_args.dart';

/// Creates an app associated with a developer.
/// This API associates the developer app with the specified API product
/// and auto-generates an API key for the app to use in calls to API proxies
/// inside that API product.
///
///
/// To get more information about DeveloperApp, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.developers.apps)
/// * How-to Guides
/// * [Creating a developer](https://cloud.google.com/apigee/docs/api-platform/publish/creating-apps-surface-your-api)
///
///
///
/// ## Example Usage
///
/// ### Apigee Developer App Basic
///
///
///
/// ### Apigee Developer App Basic Test
///
///
///
///
/// ## Import
///
/// DeveloperApp can be imported using any of these accepted formats:
///
/// * `{{org_id}}/developers/{{developer_email}}/apps/{{name}}`
///
/// * `{{org_id}}/{{developer_email}}/{{name}}`
///
/// When using the `pulumi import` command, DeveloperApp can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/developerApp:DeveloperApp default {{org_id}}/developers/{{developer_email}}/apps/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/developerApp:DeveloperApp default {{org_id}}/{{developer_email}}/{{name}}
/// ```
class DeveloperApp extends pulumi.CustomResource {
  /// List of API products associated with the developer app.
  late final pulumi.Output<List<String>?> apiProducts;

  /// Developer app family.
  late final pulumi.Output<String> appFamily;

  /// ID of the developer app. This ID is not user specified but is
  /// automatically generated on app creation. appId is a UUID.
  late final pulumi.Output<String> appId;

  /// Developer attributes (name/value pairs). The custom attribute limit is 18.
  /// Structure is documented below.
  late final pulumi.Output<List<DeveloperAppAttribute>?> attributes;

  /// Callback URL used by OAuth 2.0 authorization servers to communicate
  /// authorization codes back to developer apps.
  late final pulumi.Output<String> callbackUrl;

  /// Time at which the developer was created in milliseconds since epoch.
  late final pulumi.Output<String> createdAt;

  /// Output only. Set of credentials for the developer app consisting of
  /// the consumer key/secret pairs associated with the API products.
  /// Structure is documented below.
  late final pulumi.Output<List<DeveloperAppCredential>> credentials;

  /// Email address of the developer.
  /// This value is used to uniquely identify the developer in Apigee hybrid.
  /// Note that the email address has to be in lowercase only.
  late final pulumi.Output<String> developerEmail;

  /// ID of the developer.
  late final pulumi.Output<String> developerId;

  /// Expiration time, in milliseconds, for the consumer key that is generated
  /// for the developer app. If not set or left to the default value of -1,
  /// the API key never expires. The expiration time can't be updated after it is set.
  late final pulumi.Output<String?> keyExpiresIn;

  /// Time at which the developer was last modified in milliseconds since epoch.
  late final pulumi.Output<String> lastModifiedAt;

  /// Name of the developer app.
  late final pulumi.Output<String> name;

  /// The Apigee Organization associated with the Apigee instance,
  /// in the format `organizations/{{org_name}}`.
  late final pulumi.Output<String> orgId;

  /// Scopes to apply to the developer app.
  /// The specified scopes must already exist for the API product that
  /// you associate with the developer app.
  late final pulumi.Output<List<String>?> scopes;

  /// Status of the credential. Valid values include approved or revoked.
  late final pulumi.Output<String> status;

  DeveloperApp(
    String name, {
    DeveloperAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/developerApp:DeveloperApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiProducts = registerOutput<List<String>?>('apiProducts');
    this.appFamily = registerOutput<String>('appFamily');
    this.appId = registerOutput<String>('appId');
    this.attributes =
        registerOutput<List<DeveloperAppAttribute>?>('attributes');
    this.callbackUrl = registerOutput<String>('callbackUrl');
    this.createdAt = registerOutput<String>('createdAt');
    this.credentials =
        registerOutput<List<DeveloperAppCredential>>('credentials');
    this.developerEmail = registerOutput<String>('developerEmail');
    this.developerId = registerOutput<String>('developerId');
    this.keyExpiresIn = registerOutput<String?>('keyExpiresIn');
    this.lastModifiedAt = registerOutput<String>('lastModifiedAt');
    this.name = registerOutput<String>('name');
    this.orgId = registerOutput<String>('orgId');
    this.scopes = registerOutput<List<String>?>('scopes');
    this.status = registerOutput<String>('status');
  }
}
