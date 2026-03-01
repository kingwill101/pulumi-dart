// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_exec_resource_osconfig_v1alpha.dart';
import 'ospolicy_resource_file_resource_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_osconfig_v1alpha.dart';

/// An OS policy resource is used to define the desired state configuration and provides a specific functionality like installing/removing packages, executing a script etc. The system ensures that resources are always in their desired state by taking necessary actions if they have drifted from their desired state.
class OSPolicyResourceOsconfigV1alpha {
  /// Exec resource
  final OSPolicyResourceExecResourceOsconfigV1alpha? exec;

  /// File resource
  final OSPolicyResourceFileResourceOsconfigV1alpha? file;

  /// The id of the resource with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the OS policy.
  final String id;

  /// Package resource
  final OSPolicyResourcePackageResourceOsconfigV1alpha? pkg;

  /// Package repository resource
  final OSPolicyResourceRepositoryResourceOsconfigV1alpha? repository;

  /// Creates a new [OSPolicyResourceOsconfigV1alpha].
  /// [exec] Exec resource
  /// [file] File resource
  /// [id] The id of the resource with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the OS policy.
  /// [pkg] Package resource
  /// [repository] Package repository resource
  OSPolicyResourceOsconfigV1alpha({
    this.exec,
    this.file,
    required this.id,
    this.pkg,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exec': ?exec == null ? null : exec!.toMap(),
      'file': ?file == null ? null : file!.toMap(),
      'id': id,
      'pkg': ?pkg == null ? null : pkg!.toMap(),
      'repository': ?repository == null ? null : repository!.toMap(),
    };
  }

  factory OSPolicyResourceOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceOsconfigV1alpha(
      exec: map['exec'] == null
          ? null
          : OSPolicyResourceExecResourceOsconfigV1alpha.fromMap(
              (map['exec'] as Map).cast<String, dynamic>(),
            ),
      file: map['file'] == null
          ? null
          : OSPolicyResourceFileResourceOsconfigV1alpha.fromMap(
              (map['file'] as Map).cast<String, dynamic>(),
            ),
      id: map['id'] as String,
      pkg: map['pkg'] == null
          ? null
          : OSPolicyResourcePackageResourceOsconfigV1alpha.fromMap(
              (map['pkg'] as Map).cast<String, dynamic>(),
            ),
      repository: map['repository'] == null
          ? null
          : OSPolicyResourceRepositoryResourceOsconfigV1alpha.fromMap(
              (map['repository'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
