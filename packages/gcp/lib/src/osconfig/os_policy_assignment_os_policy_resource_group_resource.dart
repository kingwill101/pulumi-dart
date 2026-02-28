// ignore_for_file: unused_element, unnecessary_cast

import 'os_policy_assignment_os_policy_resource_group_resource_exec.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_file.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_pkg.dart';
import 'os_policy_assignment_os_policy_resource_group_resource_repository.dart';

class OsPolicyAssignmentOsPolicyResourceGroupResource {
  /// Exec resource Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourceExec? exec;

  /// File resource Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourceFile? file;

  /// The id of the resource with the following restrictions:
  ///
  /// *   Must contain only lowercase letters, numbers, and hyphens.
  /// *   Must start with a letter.
  /// *   Must be between 1-63 characters.
  /// *   Must end with a number or a letter.
  /// *   Must be unique within the OS policy.
  final String id;

  /// Package resource Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourcePkg? pkg;

  /// Package repository resource Structure is
  /// documented below.
  final OsPolicyAssignmentOsPolicyResourceGroupResourceRepository? repository;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResource].
  /// [exec] Exec resource Structure is
  /// [file] File resource Structure is
  /// [id] The id of the resource with the following restrictions:
  /// [pkg] Package resource Structure is
  /// [repository] Package repository resource Structure is
  OsPolicyAssignmentOsPolicyResourceGroupResource({
    this.exec,
    this.file,
    required this.id,
    this.pkg,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final execValue = exec;
    if (execValue != null) {
      map['exec'] = execValue.toMap();
    }
    final fileValue = file;
    if (fileValue != null) {
      map['file'] = fileValue.toMap();
    }
    map['id'] = id;
    final pkgValue = pkg;
    if (pkgValue != null) {
      map['pkg'] = pkgValue.toMap();
    }
    final repositoryValue = repository;
    if (repositoryValue != null) {
      map['repository'] = repositoryValue.toMap();
    }
    return map;
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResource.fromMap(
      Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResource(
      exec: map['exec'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceExec.fromMap(
              (map['exec'] as Map).cast<String, dynamic>()),
      file: map['file'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceFile.fromMap(
              (map['file'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      pkg: map['pkg'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourcePkg.fromMap(
              (map['pkg'] as Map).cast<String, dynamic>()),
      repository: map['repository'] == null
          ? null
          : OsPolicyAssignmentOsPolicyResourceGroupResourceRepository.fromMap(
              (map['repository'] as Map).cast<String, dynamic>()),
    );
  }
}
