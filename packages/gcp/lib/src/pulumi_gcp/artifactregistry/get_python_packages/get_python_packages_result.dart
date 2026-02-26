// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_python_packages_python_package/get_python_packages_python_package.dart';

/// Result data returned by getPythonPackages.
class GetPythonPackagesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  /// A list of all retrieved Artifact Registry Python packages. Structure is defined below.
  final List<GetPythonPackagesPythonPackage> pythonPackages;
  final String repositoryId;

  GetPythonPackagesResult({
    required this.id,
    required this.location,
    this.project,
    required this.pythonPackages,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['pythonPackages'] =
        Input.encodeList<GetPythonPackagesPythonPackage, Map<String, dynamic>>(
            pythonPackages, (value) => value.toMap());
    map['repositoryId'] = repositoryId;
    return map;
  }

  factory GetPythonPackagesResult.fromMap(Map<String, dynamic> map) {
    return GetPythonPackagesResult(
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      pythonPackages: Input.decodeList<GetPythonPackagesPythonPackage>(
          map['pythonPackages'],
          (value) => GetPythonPackagesPythonPackage.fromMap(
              (value as Map).cast<String, dynamic>())),
      repositoryId: map['repositoryId'] as String,
    );
  }
}
