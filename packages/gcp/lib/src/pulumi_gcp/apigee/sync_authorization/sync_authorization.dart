import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_authorization_args.dart';

/// Authorize the Synchronizer to download environment data from the control plane.
///
///
/// To get more information about SyncAuthorization, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations#getsyncauthorization)
/// * How-to Guides
/// * [Enable Synchronizer access](https://cloud.google.com/apigee/docs/hybrid/v1.8/synchronizer-access#enable-synchronizer-access)
///
/// ## Example Usage
///
/// ### Apigee Sync Authorization Basic Test
///
///
///
///
/// ## Import
///
/// SyncAuthorization can be imported using any of these accepted formats:
///
/// * `organizations/{{name}}/syncAuthorization`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, SyncAuthorization can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/syncAuthorization:SyncAuthorization default organizations/{{name}}/syncAuthorization
/// ```
///
/// ```sh
/// $ pulumi import gcp:apigee/syncAuthorization:SyncAuthorization default {{name}}
/// ```
class SyncAuthorization extends pulumi.CustomResource {
  /// Entity tag (ETag) used for optimistic concurrency control as a way to help prevent simultaneous updates from overwriting each other.
  /// Used internally during updates.
  late final pulumi.Output<String> etag;

  /// Array of service accounts to grant access to control plane resources, each specified using the following format: `serviceAccount:service-account-name`.
  /// The `service-account-name` is formatted like an email address. For example: my-synchronizer-manager-serviceAccount@my_project_id.iam.gserviceaccount.com
  /// You might specify multiple service accounts, for example, if you have multiple environments and wish to assign a unique service account to each one.
  /// The service accounts must have **Apigee Synchronizer Manager** role. See also [Create service accounts](https://cloud.google.com/apigee/docs/hybrid/v1.8/sa-about#create-the-service-accounts).
  late final pulumi.Output<List<String>> identities;

  /// Name of the Apigee organization.
  late final pulumi.Output<String> name;

  SyncAuthorization(
    String name, {
    SyncAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/syncAuthorization:SyncAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.etag = registerOutput<String>('etag');
    this.identities = registerOutput<List<String>>('identities');
    this.name = registerOutput<String>('name');
  }
}
