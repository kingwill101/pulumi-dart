// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../guest_policies_assignment/guest_policies_assignment.dart';
import '../guest_policies_package/guest_policies_package.dart';
import '../guest_policies_package_repository/guest_policies_package_repository.dart';
import '../guest_policies_recipe/guest_policies_recipe.dart';

/// The set of arguments for GuestPolicies.
class GuestPoliciesArgs {
  /// Specifies the VM instances that are assigned to this policy. This allows you to target sets
  /// or groups of VM instances by different parameters such as labels, names, OS, or zones.
  /// If left empty, all VM instances underneath this policy are targeted.
  /// At the same level in the resource hierarchy (that is within a project), the service prevents
  /// the creation of multiple policies that conflict with each other.
  /// For more information, see how the service
  /// [handles assignment conflicts](https://cloud.google.com/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  /// Structure is documented below.
  final Input<GuestPoliciesAssignment> assignment;

  /// Description of the guest policy. Length of the description is limited to 1024 characters.
  final Input<String>? description;

  /// The etag for this guest policy. If this is provided on update, it must match the server's etag.
  final Input<String>? etag;

  /// The logical name of the guest policy in the project with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the project.
  final Input<String> guestPolicyId;

  /// A list of package repositories to configure on the VM instance.
  /// This is done before any other configs are applied so they can use these repos.
  /// Package repositories are only configured if the corresponding package manager(s) are available.
  /// Structure is documented below.
  final Input<List<GuestPoliciesPackageRepository>>? packageRepositories;

  /// The software packages to be managed by this policy.
  /// Structure is documented below.
  final Input<List<GuestPoliciesPackage>>? packages;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A list of Recipes to install on the VM instance.
  /// Structure is documented below.
  final Input<List<GuestPoliciesRecipe>>? recipes;

  GuestPoliciesArgs({
    required this.assignment,
    this.description,
    this.etag,
    required this.guestPolicyId,
    this.packageRepositories,
    this.packages,
    this.project,
    this.recipes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assignment'] =
        Input.mapInputValue<GuestPoliciesAssignment, Map<String, dynamic>>(
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
    final packageRepositoriesValue = packageRepositories;
    if (packageRepositoriesValue != null) {
      map['packageRepositories'] = Input.mapOptionalInputValue<
              List<GuestPoliciesPackageRepository>, List<Map<String, dynamic>>>(
          packageRepositoriesValue,
          (value) => Input.encodeList<GuestPoliciesPackageRepository,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final packagesValue = packages;
    if (packagesValue != null) {
      map['packages'] = Input.mapOptionalInputValue<List<GuestPoliciesPackage>,
              List<Map<String, dynamic>>>(
          packagesValue,
          (value) =>
              Input.encodeList<GuestPoliciesPackage, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final recipesValue = recipes;
    if (recipesValue != null) {
      map['recipes'] = Input.mapOptionalInputValue<List<GuestPoliciesRecipe>,
              List<Map<String, dynamic>>>(
          recipesValue,
          (value) =>
              Input.encodeList<GuestPoliciesRecipe, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory GuestPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesArgs(
      assignment: Input.asInput<GuestPoliciesAssignment>(map['assignment']),
      description: Input.asOptionalInput<String>(map['description']),
      etag: Input.asOptionalInput<String>(map['etag']),
      guestPolicyId: Input.asInput<String>(map['guestPolicyId']),
      packageRepositories:
          Input.asOptionalInput<List<GuestPoliciesPackageRepository>>(
              map['packageRepositories']),
      packages:
          Input.asOptionalInput<List<GuestPoliciesPackage>>(map['packages']),
      project: Input.asOptionalInput<String>(map['project']),
      recipes: Input.asOptionalInput<List<GuestPoliciesRecipe>>(map['recipes']),
    );
  }
}
