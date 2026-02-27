// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'assignment.dart';
import 'package4.dart';
import 'package_repository.dart';
import 'software_recipe.dart';

/// The set of arguments for GuestPolicy.
class GuestPolicyArgs {
  /// Specifies the VM instances that are assigned to this policy. This allows you to target sets or groups of VM instances by different parameters such as labels, names, OS, or zones. If left empty, all VM instances underneath this policy are targeted. At the same level in the resource hierarchy (that is within a project), the service prevents the creation of multiple policies that conflict with each other. For more information, see how the service [handles assignment conflicts](/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  final Input<Assignment> assignment;

  /// Description of the guest policy. Length of the description is limited to 1024 characters.
  final Input<String>? description;

  /// The etag for this guest policy. If this is provided on update, it must match the server's etag.
  final Input<String>? etag;

  /// Required. The logical name of the guest policy in the project with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the project.
  final Input<String> guestPolicyId;

  /// Unique name of the resource in this project using one of the following forms: `projects/{project_number}/guestPolicies/{guest_policy_id}`.
  final Input<String>? name;

  /// A list of package repositories to configure on the VM instance. This is done before any other configs are applied so they can use these repos. Package repositories are only configured if the corresponding package manager(s) are available.
  final Input<List<PackageRepository>>? packageRepositories;

  /// The software packages to be managed by this policy.
  final Input<List<Package4>>? packages;
  final Input<String>? project;

  /// A list of Recipes to install on the VM instance.
  final Input<List<SoftwareRecipe>>? recipes;

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
    map['assignment'] = Input.mapInputValue<Assignment, Map<String, dynamic>>(
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
      map['packageRepositories'] = Input.mapOptionalInputValue<
              List<PackageRepository>, List<Map<String, dynamic>>>(
          packageRepositoriesValue,
          (value) => Input.encodeList<PackageRepository, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final packagesValue = packages;
    if (packagesValue != null) {
      map['packages'] = Input.mapOptionalInputValue<List<Package4>,
              List<Map<String, dynamic>>>(
          packagesValue,
          (value) => Input.encodeList<Package4, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final recipesValue = recipes;
    if (recipesValue != null) {
      map['recipes'] = Input.mapOptionalInputValue<List<SoftwareRecipe>,
              List<Map<String, dynamic>>>(
          recipesValue,
          (value) => Input.encodeList<SoftwareRecipe, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory GuestPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GuestPolicyArgs(
      assignment: Input.asInput<Assignment>(map['assignment']),
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      guestPolicyId: Input.asInput<String>(map['guestPolicyId']),
      name: Input.asOptionalInput<String>(map['name']),
      packageRepositories: Input.asOptionalInput<List<PackageRepository>>(
          map['packageRepositories']),
      packages: Input.asOptionalInput<List<Package4>>(map['packages']),
      project: Input.asOptionalInput<String>(map['project']),
      recipes: Input.asOptionalInput<List<SoftwareRecipe>>(map['recipes']),
    );
  }
}
