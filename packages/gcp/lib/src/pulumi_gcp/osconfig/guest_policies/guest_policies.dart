import 'package:pulumi/pulumi.dart';
import '../guest_policies_assignment/guest_policies_assignment.dart';
import '../guest_policies_package/guest_policies_package.dart';
import '../guest_policies_package_repository/guest_policies_package_repository.dart';
import '../guest_policies_recipe/guest_policies_recipe.dart';
import 'guest_policies_args.dart';

/// An OS Config resource representing a guest configuration policy. These policies represent
/// the desired state for VM instance guest environments including packages to install or remove,
/// package repository configurations, and software to install.
///
/// To get more information about GuestPolicies, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/osconfig/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/compute/docs/os-config-management)
///
/// ## Example Usage
///
/// ### Os Config Guest Policies Basic
///
///
///
/// ### Os Config Guest Policies Packages
///
///
///
/// ### Os Config Guest Policies Recipes
///
///
///
///
/// ## Import
///
/// GuestPolicies can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/guestPolicies/{{guest_policy_id}}`
///
/// * `{{project}}/{{guest_policy_id}}`
///
/// * `{{guest_policy_id}}`
///
/// When using the `pulumi import` command, GuestPolicies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:osconfig/guestPolicies:GuestPolicies default projects/{{project}}/guestPolicies/{{guest_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/guestPolicies:GuestPolicies default {{project}}/{{guest_policy_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:osconfig/guestPolicies:GuestPolicies default {{guest_policy_id}}
/// ```
class GuestPolicies extends CustomResource {
  /// Specifies the VM instances that are assigned to this policy. This allows you to target sets
  /// or groups of VM instances by different parameters such as labels, names, OS, or zones.
  /// If left empty, all VM instances underneath this policy are targeted.
  /// At the same level in the resource hierarchy (that is within a project), the service prevents
  /// the creation of multiple policies that conflict with each other.
  /// For more information, see how the service
  /// [handles assignment conflicts](https://cloud.google.com/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  /// Structure is documented below.
  late final Output<GuestPoliciesAssignment> assignment;

  /// Time this guest policy was created. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.
  /// Example: "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// Description of the guest policy. Length of the description is limited to 1024 characters.
  late final Output<String?> description;

  /// The etag for this guest policy. If this is provided on update, it must match the server's etag.
  late final Output<String> etag;

  /// The logical name of the guest policy in the project with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the project.
  late final Output<String> guestPolicyId;

  /// Unique name of the resource in this project using one of the following forms: projects/{project_number}/guestPolicies/{guestPolicyId}.
  late final Output<String> name;

  /// A list of package repositories to configure on the VM instance.
  /// This is done before any other configs are applied so they can use these repos.
  /// Package repositories are only configured if the corresponding package manager(s) are available.
  /// Structure is documented below.
  late final Output<List<GuestPoliciesPackageRepository>?> packageRepositories;

  /// The software packages to be managed by this policy.
  /// Structure is documented below.
  late final Output<List<GuestPoliciesPackage>?> packages;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// A list of Recipes to install on the VM instance.
  /// Structure is documented below.
  late final Output<List<GuestPoliciesRecipe>?> recipes;

  /// Last time this guest policy was updated. A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.
  /// Example: "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  GuestPolicies(
    String name, {
    GuestPoliciesArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:osconfig/guestPolicies:GuestPolicies',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assignment = registerOutput<GuestPoliciesAssignment>('assignment');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.etag = registerOutput<String>('etag');
    this.guestPolicyId = registerOutput<String>('guestPolicyId');
    this.name = registerOutput<String>('name');
    this.packageRepositories =
        registerOutput<List<GuestPoliciesPackageRepository>?>(
            'packageRepositories');
    this.packages = registerOutput<List<GuestPoliciesPackage>?>('packages');
    this.project = registerOutput<String>('project');
    this.recipes = registerOutput<List<GuestPoliciesRecipe>?>('recipes');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
