import 'package:pulumi/pulumi.dart';
import 'project_args2.dart';

/// Allows creation and management of a Google Cloud Platform project.
///
/// Projects created with this resource must be associated with an Organization.
/// See the [Organization documentation](https://docs.cloud.google.com/resource-manager/docs/quickstarts) for more details.
///
/// The user or service account that is running this provider when creating a `gcp.organizations.Project`
/// resource must have `roles/resourcemanager.projectCreator` on the specified organization. See the
/// [Access Control for Organizations Using IAM](https://docs.cloud.google.com/resource-manager/docs/access-control-org)
/// doc for more information.
///
/// > This resource reads the specified billing account on every pulumi up and plan operation so you must have permissions on the specified billing account.
///
/// > It is recommended to use the `constraints/compute.skipDefaultNetworkCreation` [constraint](https://www.terraform.io/docs/providers/google/r/google_organization_policy.html) to remove the default network instead of setting `auto_create_network` to false, when possible.
///
/// > It may take a while for the attached tag bindings to be deleted after the project is scheduled to be deleted.
///
/// To get more information about projects, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects)
/// * How-to Guides
/// * [Creating and managing projects](https://docs.cloud.google.com/resource-manager/docs/creating-managing-projects)
///
/// ## Example Usage
///
///
///
/// To create a project under a specific folder
///
///
///
/// To create a project with a tag
///
///
///
/// ## Import
///
/// Projects can be imported using the `project_id`, e.g.
///
/// * `{{project_id}}`
///
/// When using the `pulumi import` command, Projects can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:organizations/project:Project default {{project_id}}
/// ```
class Project2 extends CustomResource {
  /// Create the 'default' network automatically.  Default true. If set to false, the default network will be deleted.  Note that, for quota purposes, you will still need to have 1 network slot available to create the project successfully, even if you set auto_create_network to false, since the network will exist momentarily.
  late final Output<bool?> autoCreateNetwork;

  /// The alphanumeric ID of the billing account this project
  /// belongs to. The user or service account performing this operation with the provider
  /// must have at mininum Billing Account User privileges (`roles/billing.user`) on the billing account.
  /// See [Google Cloud Billing API Access Control](https://cloud.google.com/billing/docs/how-to/billing-access)
  /// for more details.
  late final Output<String?> billingAccount;
  late final Output<String?> deletionPolicy;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// The numeric ID of the folder this project should be
  /// created under. Only one of `org_id` or `folder_id` may be
  /// specified. If the `folder_id` is specified, then the project is
  /// created under the specified folder. Changing this forces the
  /// project to be migrated to the newly specified folder.
  late final Output<String?> folderId;

  /// A set of key/value label pairs to assign to the project.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The display name of the project.
  late final Output<String> name;

  /// The numeric identifier of the project.
  late final Output<String> number;

  /// The numeric ID of the organization this project belongs to.
  /// Changing this forces a new project to be created.  Only one of
  /// `org_id` or `folder_id` may be specified. If the `org_id` is
  /// specified then the project is created at the top level. Changing
  /// this forces the project to be migrated to the newly specified
  /// organization.
  late final Output<String?> orgId;

  /// The project ID. Changing this forces a new project to be created.
  late final Output<String> projectId;

  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// A map of resource manager tags. Resource manager tag keys and values have the same definition as resource manager tags. Keys must be in the format tagKeys/{tag_key_id}, and values are in the format tagValues/456. The field is ignored when empty. The field is immutable and causes resource replacement when mutated. This field is only set at create time and modifying this field after creation will trigger recreation. To apply tags to an existing resource, see the `gcp.tags.TagValue` resource.
  late final Output<Map<String, String>?> tags;

  Project2(
    String name, {
    ProjectArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/project:Project',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoCreateNetwork = registerOutput<bool?>('autoCreateNetwork');
    this.billingAccount = registerOutput<String?>('billingAccount');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.folderId = registerOutput<String?>('folderId');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.name = registerOutput<String>('name');
    this.number = registerOutput<String>('number');
    this.orgId = registerOutput<String?>('orgId');
    this.projectId = registerOutput<String>('projectId');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
