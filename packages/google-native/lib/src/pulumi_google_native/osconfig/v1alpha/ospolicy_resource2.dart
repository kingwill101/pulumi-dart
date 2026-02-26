// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_exec_resource2.dart';
import 'ospolicy_resource_file_resource2.dart';
import 'ospolicy_resource_package_resource2.dart';
import 'ospolicy_resource_repository_resource2.dart';

/// An OS policy resource is used to define the desired state configuration and provides a specific functionality like installing/removing packages, executing a script etc. The system ensures that resources are always in their desired state by taking necessary actions if they have drifted from their desired state.
class OSPolicyResource2 {
  /// Exec resource
  final OSPolicyResourceExecResource2? exec;

  /// File resource
  final OSPolicyResourceFileResource2? file;

  /// The id of the resource with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the OS policy.
  final String id;

  /// Package resource
  final OSPolicyResourcePackageResource2? pkg;

  /// Package repository resource
  final OSPolicyResourceRepositoryResource2? repository;

  OSPolicyResource2({
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

  factory OSPolicyResource2.fromMap(Map<String, dynamic> map) {
    return OSPolicyResource2(
      exec: map['exec'] == null
          ? null
          : OSPolicyResourceExecResource2.fromMap(
              (map['exec'] as Map).cast<String, dynamic>()),
      file: map['file'] == null
          ? null
          : OSPolicyResourceFileResource2.fromMap(
              (map['file'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      pkg: map['pkg'] == null
          ? null
          : OSPolicyResourcePackageResource2.fromMap(
              (map['pkg'] as Map).cast<String, dynamic>()),
      repository: map['repository'] == null
          ? null
          : OSPolicyResourceRepositoryResource2.fromMap(
              (map['repository'] as Map).cast<String, dynamic>()),
    );
  }
}
