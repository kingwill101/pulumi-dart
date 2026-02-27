// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_exec_resource_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_file_resource_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_package_resource_response_osconfig_v1alpha.dart';
import 'ospolicy_resource_repository_resource_response_osconfig_v1alpha.dart';

/// An OS policy resource is used to define the desired state configuration and provides a specific functionality like installing/removing packages, executing a script etc. The system ensures that resources are always in their desired state by taking necessary actions if they have drifted from their desired state.
class OSPolicyResourceResponseOsconfigV1alpha {
  /// Exec resource
  final OSPolicyResourceExecResourceResponseOsconfigV1alpha exec;

  /// File resource
  final OSPolicyResourceFileResourceResponseOsconfigV1alpha file;

  /// Package resource
  final OSPolicyResourcePackageResourceResponseOsconfigV1alpha pkg;

  /// Package repository resource
  final OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha repository;

  OSPolicyResourceResponseOsconfigV1alpha({
    required this.exec,
    required this.file,
    required this.pkg,
    required this.repository,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['exec'] = exec.toMap();
    map['file'] = file.toMap();
    map['pkg'] = pkg.toMap();
    map['repository'] = repository.toMap();
    return map;
  }

  factory OSPolicyResourceResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourceResponseOsconfigV1alpha(
      exec: OSPolicyResourceExecResourceResponseOsconfigV1alpha.fromMap(
          (map['exec'] as Map).cast<String, dynamic>()),
      file: OSPolicyResourceFileResourceResponseOsconfigV1alpha.fromMap(
          (map['file'] as Map).cast<String, dynamic>()),
      pkg: OSPolicyResourcePackageResourceResponseOsconfigV1alpha.fromMap(
          (map['pkg'] as Map).cast<String, dynamic>()),
      repository:
          OSPolicyResourceRepositoryResourceResponseOsconfigV1alpha.fromMap(
              (map['repository'] as Map).cast<String, dynamic>()),
    );
  }
}
