import 'package:pulumi/pulumi.dart' hide Config;
import 'assignment_response.dart';
import 'guest_policy_args.dart';
import 'package_repository_response.dart';
import 'package_response4.dart';
import 'software_recipe_response.dart';

/// Create an OS Config guest policy.
class GuestPolicy extends CustomResource {
  /// Specifies the VM instances that are assigned to this policy. This allows you to target sets or groups of VM instances by different parameters such as labels, names, OS, or zones. If left empty, all VM instances underneath this policy are targeted. At the same level in the resource hierarchy (that is within a project), the service prevents the creation of multiple policies that conflict with each other. For more information, see how the service [handles assignment conflicts](/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  late final Output<AssignmentResponse> assignment;

  /// Time this guest policy was created.
  late final Output<String> createTime;

  /// Description of the guest policy. Length of the description is limited to 1024 characters.
  late final Output<String> description;

  /// The etag for this guest policy. If this is provided on update, it must match the server's etag.
  late final Output<String> etag;

  /// Required. The logical name of the guest policy in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  late final Output<String> guestPolicyId;

  /// Unique name of the resource in this project using one of the following forms: `projects/{project_number}/guestPolicies/{guest_policy_id}`.
  late final Output<String> name;

  /// A list of package repositories to configure on the VM instance. This is done before any other configs are applied so they can use these repos. Package repositories are only configured if the corresponding package manager(s) are available.
  late final Output<List<PackageRepositoryResponse>> packageRepositories;

  /// The software packages to be managed by this policy.
  late final Output<List<PackageResponse4>> packages;
  late final Output<String> project;

  /// A list of Recipes to install on the VM instance.
  late final Output<List<SoftwareRecipeResponse>> recipes;

  /// Last time this guest policy was updated.
  late final Output<String> updateTime;

  GuestPolicy(
    String name, {
    GuestPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:osconfig/v1beta:GuestPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.assignment = registerOutput<AssignmentResponse>('assignment');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.guestPolicyId = registerOutput<String>('guestPolicyId');
    this.name = registerOutput<String>('name');
    this.packageRepositories =
        registerOutput<List<PackageRepositoryResponse>>('packageRepositories');
    this.packages = registerOutput<List<PackageResponse4>>('packages');
    this.project = registerOutput<String>('project');
    this.recipes = registerOutput<List<SoftwareRecipeResponse>>('recipes');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
