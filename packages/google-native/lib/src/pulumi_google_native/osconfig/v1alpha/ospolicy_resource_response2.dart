// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_exec_resource_response2.dart';
import 'ospolicy_resource_file_resource_response2.dart';
import 'ospolicy_resource_package_resource_response2.dart';
import 'ospolicy_resource_repository_resource_response2.dart';

/// An OS policy resource is used to define the desired state configuration and provides a specific functionality like installing/removing packages, executing a script etc. The system ensures that resources are always in their desired state by taking necessary actions if they have drifted from their desired state.
class OSPolicyResourceResponse2 {
  /// Exec resource
  final OSPolicyResourceExecResourceResponse2 exec;

  /// File resource
  final OSPolicyResourceFileResourceResponse2 file;

  /// Package resource
  final OSPolicyResourcePackageResourceResponse2 pkg;

  /// Package repository resource
  final OSPolicyResourceRepositoryResourceResponse2 repository;

  OSPolicyResourceResponse2({
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

  factory OSPolicyResourceResponse2.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceResponse2(
      exec: OSPolicyResourceExecResourceResponse2.fromMap(
          (map['exec'] as Map).cast<String, dynamic>()),
      file: OSPolicyResourceFileResourceResponse2.fromMap(
          (map['file'] as Map).cast<String, dynamic>()),
      pkg: OSPolicyResourcePackageResourceResponse2.fromMap(
          (map['pkg'] as Map).cast<String, dynamic>()),
      repository: OSPolicyResourceRepositoryResourceResponse2.fromMap(
          (map['repository'] as Map).cast<String, dynamic>()),
    );
  }
}
