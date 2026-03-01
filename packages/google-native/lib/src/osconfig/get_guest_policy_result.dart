// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_response.dart';
import 'package_repository_response.dart';
import 'package_response.dart';
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
  final List<PackageResponse> packages;

  /// A list of Recipes to install on the VM instance.
  final List<SoftwareRecipeResponse> recipes;

  /// Last time this guest policy was updated.
  final String updateTime;

  /// Creates a new [GetGuestPolicyResult].
  /// [assignment] Specifies the VM instances that are assigned to this policy. This allows you to target sets or groups of VM instances by different parameters such as labels, names, OS, or zones. If left empty, all VM instances underneath this policy are targeted. At the same level in the resource hierarchy (that is within a project), the service prevents the creation of multiple policies that conflict with each other. For more information, see how the service [handles assignment conflicts](/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  /// [createTime] Time this guest policy was created.
  /// [description] Description of the guest policy. Length of the description is limited to 1024 characters.
  /// [etag] The etag for this guest policy. If this is provided on update, it must match the server's etag.
  /// [name] Unique name of the resource in this project using one of the following forms: `projects/{project_number}/guestPolicies/{guest_policy_id}`.
  /// [packageRepositories] A list of package repositories to configure on the VM instance. This is done before any other configs are applied so they can use these repos. Package repositories are only configured if the corresponding package manager(s) are available.
  /// [packages] The software packages to be managed by this policy.
  /// [recipes] A list of Recipes to install on the VM instance.
  /// [updateTime] Last time this guest policy was updated.
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
    return <String, dynamic>{
      'assignment': assignment.toMap(),
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'name': name,
      'packageRepositories':
          pulumi.Input.encodeList<
            PackageRepositoryResponse,
            Map<String, dynamic>
          >(packageRepositories, (value) => value.toMap()),
      'packages':
          pulumi.Input.encodeList<PackageResponse, Map<String, dynamic>>(
            packages,
            (value) => value.toMap(),
          ),
      'recipes':
          pulumi.Input.encodeList<SoftwareRecipeResponse, Map<String, dynamic>>(
            recipes,
            (value) => value.toMap(),
          ),
      'updateTime': updateTime,
    };
  }

  factory GetGuestPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetGuestPolicyResult(
      assignment: AssignmentResponse.fromMap(
        (map['assignment'] as Map).cast<String, dynamic>(),
      ),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      name: map['name'] as String,
      packageRepositories: pulumi.Input.decodeList<PackageRepositoryResponse>(
        map['packageRepositories'],
        (value) => PackageRepositoryResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      packages: pulumi.Input.decodeList<PackageResponse>(
        map['packages'],
        (value) =>
            PackageResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
      recipes: pulumi.Input.decodeList<SoftwareRecipeResponse>(
        map['recipes'],
        (value) => SoftwareRecipeResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      updateTime: map['updateTime'] as String,
    );
  }
}
