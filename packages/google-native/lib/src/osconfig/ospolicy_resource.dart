// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_exec_resource.dart';
import 'ospolicy_resource_file_resource.dart';
import 'ospolicy_resource_package_resource.dart';
import 'ospolicy_resource_repository_resource.dart';

/// An OS policy resource is used to define the desired state configuration and provides a specific functionality like installing/removing packages, executing a script etc. The system ensures that resources are always in their desired state by taking necessary actions if they have drifted from their desired state.
class OSPolicyResource {
  /// Exec resource
  final OSPolicyResourceExecResource? exec;
  /// File resource
  final OSPolicyResourceFileResource? file;
  /// The id of the resource with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the OS policy.
  final String id;
  /// Package resource
  final OSPolicyResourcePackageResource? pkg;
  /// Package repository resource
  final OSPolicyResourceRepositoryResource? repository;

  /// Creates a new [OSPolicyResource].
  /// [exec] Exec resource
  /// [file] File resource
  /// [id] The id of the resource with the following restrictions: * Must contain only lowercase letters, numbers, and hyphens. * Must start with a letter. * Must be between 1-63 characters. * Must end with a number or a letter. * Must be unique within the OS policy.
  /// [pkg] Package resource
  /// [repository] Package repository resource
  OSPolicyResource({
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

  factory OSPolicyResource.fromMap(Map<String, dynamic> map) {
    return OSPolicyResource(
      exec: map['exec'] == null ? null : OSPolicyResourceExecResource.fromMap((map['exec'] as Map).cast<String, dynamic>()),
      file: map['file'] == null ? null : OSPolicyResourceFileResource.fromMap((map['file'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      pkg: map['pkg'] == null ? null : OSPolicyResourcePackageResource.fromMap((map['pkg'] as Map).cast<String, dynamic>()),
      repository: map['repository'] == null ? null : OSPolicyResourceRepositoryResource.fromMap((map['repository'] as Map).cast<String, dynamic>()),
    );
  }
}

