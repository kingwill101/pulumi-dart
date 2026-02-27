// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment.dart';
import 'package_osconfig_v1beta.dart';
import 'package_repository.dart';
import 'software_recipe.dart';

/// The set of arguments for GuestPolicy.
class GuestPolicyArgs {
  /// Specifies the VM instances that are assigned to this policy. This allows you to target sets or groups of VM instances by different parameters such as labels, names, OS, or zones. If left empty, all VM instances underneath this policy are targeted. At the same level in the resource hierarchy (that is within a project), the service prevents the creation of multiple policies that conflict with each other. For more information, see how the service [handles assignment conflicts](/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  final pulumi.Input<Assignment> assignment;

  /// Description of the guest policy. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;

  /// The etag for this guest policy. If this is provided on update, it must match the server's etag.
  final pulumi.Input<String>? etag;

  /// Required. The logical name of the guest policy in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final pulumi.Input<String> guestPolicyId;

  /// Unique name of the resource in this project using one of the following forms: `projects/{project_number}/guestPolicies/{guest_policy_id}`.
  final pulumi.Input<String>? name;

  /// A list of package repositories to configure on the VM instance. This is done before any other configs are applied so they can use these repos. Package repositories are only configured if the corresponding package manager(s) are available.
  final pulumi.Input<List<PackageRepository>>? packageRepositories;

  /// The software packages to be managed by this policy.
  final pulumi.Input<List<PackageOsconfigV1beta>>? packages;
  final pulumi.Input<String>? project;

  /// A list of Recipes to install on the VM instance.
  final pulumi.Input<List<SoftwareRecipe>>? recipes;

  GuestPolicyArgs({
    required this.assignment,
    this.description,
    this.etag,
    required this.guestPolicyId,
    this.name,
    this.packageRepositories,
    this.packages,
    this.project,
    this.recipes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assignment'] =
        pulumi.Input.mapInputValue<Assignment, Map<String, dynamic>>(
            assignment, (value) => value.toMap());
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    map['guestPolicyId'] = guestPolicyId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final packageRepositoriesValue = packageRepositories;
    if (packageRepositoriesValue != null) {
      map['packageRepositories'] = pulumi.Input.mapOptionalInputValue<
              List<PackageRepository>, List<Map<String, dynamic>>>(
          packageRepositoriesValue,
          (value) =>
              pulumi.Input.encodeList<PackageRepository, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final packagesValue = packages;
    if (packagesValue != null) {
      map['packages'] = pulumi.Input.mapOptionalInputValue<
              List<PackageOsconfigV1beta>, List<Map<String, dynamic>>>(
          packagesValue,
          (value) => pulumi.Input.encodeList<PackageOsconfigV1beta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final recipesValue = recipes;
    if (recipesValue != null) {
      map['recipes'] = pulumi.Input.mapOptionalInputValue<List<SoftwareRecipe>,
              List<Map<String, dynamic>>>(
          recipesValue,
          (value) =>
              pulumi.Input.encodeList<SoftwareRecipe, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory GuestPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GuestPolicyArgs(
      assignment: pulumi.Input.asInput<Assignment>(map['assignment']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      etag: pulumi.Input.asOptionalInput<String>(map['etag']),
      guestPolicyId: pulumi.Input.asInput<String>(map['guestPolicyId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      packageRepositories:
          pulumi.Input.asOptionalInput<List<PackageRepository>>(
              map['packageRepositories']),
      packages: pulumi.Input.asOptionalInput<List<PackageOsconfigV1beta>>(
          map['packages']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      recipes:
          pulumi.Input.asOptionalInput<List<SoftwareRecipe>>(map['recipes']),
    );
  }
}
