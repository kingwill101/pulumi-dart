// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'assignment_response.dart';
import 'package_repository_response.dart';
import 'package_response4.dart';
import 'software_recipe_response.dart';

/// Result data returned by getGuestPolicy.
class GetGuestPolicyResult {
  /// Specifies the VM instances that are assigned to this policy. This allows you to target sets or groups of VM instances by different parameters such as labels, names, OS, or zones. If left empty, all VM instances underneath this policy are targeted. At the same level in the resource hierarchy (that is within a project), the service prevents the creation of multiple policies that conflict with each other. For more information, see how the service [handles assignment conflicts](/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  final AssignmentResponse assignment;

  /// Time this guest policy was created.
  final String createTime;

  /// Description of the guest policy. Length of the description is limited to 1024 characters.
  final String description;

  /// The etag for this guest policy. If this is provided on update, it must match the server's etag.
  final String etag;

  /// Unique name of the resource in this project using one of the following forms: `projects/{project_number}/guestPolicies/{guest_policy_id}`.
  final String name;

  /// A list of package repositories to configure on the VM instance. This is done before any other configs are applied so they can use these repos. Package repositories are only configured if the corresponding package manager(s) are available.
  final List<PackageRepositoryResponse> packageRepositories;

  /// The software packages to be managed by this policy.
  final List<PackageResponse4> packages;

  /// A list of Recipes to install on the VM instance.
  final List<SoftwareRecipeResponse> recipes;

  /// Last time this guest policy was updated.
  final String updateTime;

  GetGuestPolicyResult({
    required this.assignment,
    required this.createTime,
    required this.description,
    required this.etag,
    required this.name,
    required this.packageRepositories,
    required this.packages,
    required this.recipes,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assignment'] = assignment.toMap();
    map['createTime'] = createTime;
    map['description'] = description;
    map['etag'] = etag;
    map['name'] = name;
    map['packageRepositories'] =
        Input.encodeList<PackageRepositoryResponse, Map<String, dynamic>>(
            packageRepositories, (value) => value.toMap());
    map['packages'] = Input.encodeList<PackageResponse4, Map<String, dynamic>>(
        packages, (value) => value.toMap());
    map['recipes'] =
        Input.encodeList<SoftwareRecipeResponse, Map<String, dynamic>>(
            recipes, (value) => value.toMap());
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetGuestPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetGuestPolicyResult(
      assignment: AssignmentResponse.fromMap(
          (map['assignment'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      packageRepositories: Input.decodeList<PackageRepositoryResponse>(
          map['packageRepositories'],
          (value) => PackageRepositoryResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      packages: Input.decodeList<PackageResponse4>(
          map['packages'],
          (value) =>
              PackageResponse4.fromMap((value as Map).cast<String, dynamic>())),
      recipes: Input.decodeList<SoftwareRecipeResponse>(
          map['recipes'],
          (value) => SoftwareRecipeResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
