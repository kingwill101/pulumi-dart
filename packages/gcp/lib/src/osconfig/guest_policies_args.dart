// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_policies_assignment.dart';
import 'guest_policies_package.dart';
import 'guest_policies_package_repository.dart';
import 'guest_policies_recipe.dart';

/// {@template pulumi_osconfig_guest_policies_guest_policies_args_doc}
/// The set of arguments for GuestPolicies.
/// {@endtemplate}
/// {@macro pulumi_osconfig_guest_policies_guest_policies_args_doc}
class GuestPoliciesArgs {
  /// Specifies the VM instances that are assigned to this policy. This allows you to target sets
  /// or groups of VM instances by different parameters such as labels, names, OS, or zones.
  /// If left empty, all VM instances underneath this policy are targeted.
  /// At the same level in the resource hierarchy (that is within a project), the service prevents
  /// the creation of multiple policies that conflict with each other.
  /// For more information, see how the service
  /// [handles assignment conflicts](https://cloud.google.com/compute/docs/os-config-management/create-guest-policy#handle-conflicts).
  /// Structure is documented below.
  final pulumi.Input<GuestPoliciesAssignment> assignment;

  /// Description of the guest policy. Length of the description is limited to 1024 characters.
  final pulumi.Input<String>? description;

  /// The etag for this guest policy. If this is provided on update, it must match the server's etag.
  final pulumi.Input<String>? etag;

  /// The logical name of the guest policy in the project with the following restrictions:
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  /// * Must be unique within the project.
  final pulumi.Input<String> guestPolicyId;

  /// A list of package repositories to configure on the VM instance.
  /// This is done before any other configs are applied so they can use these repos.
  /// Package repositories are only configured if the corresponding package manager(s) are available.
  /// Structure is documented below.
  final pulumi.Input<List<GuestPoliciesPackageRepository>>? packageRepositories;

  /// The software packages to be managed by this policy.
  /// Structure is documented below.
  final pulumi.Input<List<GuestPoliciesPackage>>? packages;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A list of Recipes to install on the VM instance.
  /// Structure is documented below.
  final pulumi.Input<List<GuestPoliciesRecipe>>? recipes;

  /// Creates a new [GuestPoliciesArgs].
  /// [assignment] Specifies the VM instances that are assigned to this policy. This allows you to target sets
  /// [description] Description of the guest policy. Length of the description is limited to 1024 characters.
  /// [etag] The etag for this guest policy. If this is provided on update, it must match the server's etag.
  /// [guestPolicyId] The logical name of the guest policy in the project with the following restrictions:
  /// [packageRepositories] A list of package repositories to configure on the VM instance.
  /// [packages] The software packages to be managed by this policy.
  /// [project] The ID of the project in which the resource belongs.
  /// [recipes] A list of Recipes to install on the VM instance.
  GuestPoliciesArgs({
    required GuestPoliciesAssignment assignment,
    String? description,
    String? etag,
    required String guestPolicyId,
    List<GuestPoliciesPackageRepository>? packageRepositories,
    List<GuestPoliciesPackage>? packages,
    String? project,
    List<GuestPoliciesRecipe>? recipes,
  }) : assignment = pulumi.Input.asInput<GuestPoliciesAssignment>(assignment),
       description = pulumi.Input.asOptionalInput<String>(description),
       etag = pulumi.Input.asOptionalInput<String>(etag),
       guestPolicyId = pulumi.Input.asInput<String>(guestPolicyId),
       packageRepositories =
           pulumi.Input.asOptionalInput<List<GuestPoliciesPackageRepository>>(
             packageRepositories,
           ),
       packages = pulumi.Input.asOptionalInput<List<GuestPoliciesPackage>>(
         packages,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       recipes = pulumi.Input.asOptionalInput<List<GuestPoliciesRecipe>>(
         recipes,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignment':
          pulumi.Input.mapInputValue<
            GuestPoliciesAssignment,
            Map<String, dynamic>
          >(assignment, (value) => value.toMap()),
      'description': ?description,
      'etag': ?etag,
      'guestPolicyId': guestPolicyId,
      'packageRepositories':
          ?pulumi.Input.mapOptionalInputValue<
            List<GuestPoliciesPackageRepository>,
            List<Map<String, dynamic>>
          >(
            packageRepositories,
            (value) =>
                pulumi.Input.encodeList<
                  GuestPoliciesPackageRepository,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'packages':
          ?pulumi.Input.mapOptionalInputValue<
            List<GuestPoliciesPackage>,
            List<Map<String, dynamic>>
          >(
            packages,
            (value) =>
                pulumi.Input.encodeList<
                  GuestPoliciesPackage,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'project': ?project,
      'recipes':
          ?pulumi.Input.mapOptionalInputValue<
            List<GuestPoliciesRecipe>,
            List<Map<String, dynamic>>
          >(
            recipes,
            (value) =>
                pulumi.Input.encodeList<
                  GuestPoliciesRecipe,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GuestPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesArgs(
      assignment: GuestPoliciesAssignment.fromMap(
        (map['assignment'] as Map).cast<String, dynamic>(),
      ),
      description: map['description'] == null
          ? null
          : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      guestPolicyId: map['guestPolicyId'] as String,
      packageRepositories: map['packageRepositories'] == null
          ? null
          : pulumi.Input.decodeList<GuestPoliciesPackageRepository>(
              map['packageRepositories'],
              (value) => GuestPoliciesPackageRepository.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      packages: map['packages'] == null
          ? null
          : pulumi.Input.decodeList<GuestPoliciesPackage>(
              map['packages'],
              (value) => GuestPoliciesPackage.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      project: map['project'] == null ? null : map['project'] as String,
      recipes: map['recipes'] == null
          ? null
          : pulumi.Input.decodeList<GuestPoliciesRecipe>(
              map['recipes'],
              (value) => GuestPoliciesRecipe.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
