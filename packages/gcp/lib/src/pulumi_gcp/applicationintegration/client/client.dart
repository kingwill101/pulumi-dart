import 'package:pulumi/pulumi.dart' as pulumi;
import '../client_cloud_kms_config/client_cloud_kms_config.dart';
import 'client_args.dart';

/// Application Integration Client.
///
///
/// To get more information about Client, see:
///
/// * [API documentation](https://cloud.google.com/application-integration/docs/reference/rest/v1/projects.locations.clients)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/application-integration/docs/overview)
/// * [Set up Application Integration](https://cloud.google.com/application-integration/docs/setup-application-integration)
///
/// ## Example Usage
///
/// ### Integrations Client Basic
///
///
///
/// ### Integrations Client Full
///
///
///
///
/// ## Import
///
/// Client can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clients`
///
/// * `{{project}}/{{location}}`
///
/// * `{{location}}`
///
/// When using the `pulumi import` command, Client can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:applicationintegration/client:Client default projects/{{project}}/locations/{{location}}/clients
/// ```
///
/// ```sh
/// $ pulumi import gcp:applicationintegration/client:Client default {{project}}/{{location}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:applicationintegration/client:Client default {{location}}
/// ```
class Client extends pulumi.CustomResource {
  /// Cloud KMS config for AuthModule to encrypt/decrypt credentials.
  /// Structure is documented below.
  late final pulumi.Output<ClientCloudKmsConfig?> cloudKmsConfig;

  /// Indicates if sample integrations should be created along with provisioning.
  late final pulumi.Output<bool?> createSampleIntegrations;

  /// Location in which client needs to be provisioned.
  late final pulumi.Output<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// (Optional, Deprecated)
  /// User input run-as service account, if empty, will bring up a new default service account.
  ///
  /// > **Warning:** `run_as_service_account` is deprecated and will be removed in a future major release.
  late final pulumi.Output<String?> runAsServiceAccount;

  Client(
    String name, {
    ClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:applicationintegration/client:Client',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cloudKmsConfig =
        registerOutput<ClientCloudKmsConfig?>('cloudKmsConfig');
    this.createSampleIntegrations =
        registerOutput<bool?>('createSampleIntegrations');
    this.location = registerOutput<String>('location');
    this.project = registerOutput<String>('project');
    this.runAsServiceAccount = registerOutput<String?>('runAsServiceAccount');
  }
}
