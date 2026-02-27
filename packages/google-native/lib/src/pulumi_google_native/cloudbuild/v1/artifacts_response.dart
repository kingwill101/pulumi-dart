// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'artifact_objects_response.dart';
import 'maven_artifact_response.dart';
import 'npm_package_response.dart';
import 'python_package_response.dart';

/// Artifacts produced by a build that should be uploaded upon successful completion of all build steps.
class ArtifactsResponse {
  /// A list of images to be pushed upon the successful completion of all build steps. The images will be pushed using the builder service account's credentials. The digests of the pushed images will be stored in the Build resource's results field. If any of the images fail to be pushed, the build is marked FAILURE.
  final List<String> images;

  /// A list of Maven artifacts to be uploaded to Artifact Registry upon successful completion of all build steps. Artifacts in the workspace matching specified paths globs will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any artifacts fail to be pushed, the build is marked FAILURE.
  final List<MavenArtifactResponse> mavenArtifacts;

  /// A list of npm packages to be uploaded to Artifact Registry upon successful completion of all build steps. Npm packages in the specified paths will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any packages fail to be pushed, the build is marked FAILURE.
  final List<NpmPackageResponse> npmPackages;

  /// A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. Files in the workspace matching specified paths globs will be uploaded to the specified Cloud Storage location using the builder service account's credentials. The location and generation of the uploaded objects will be stored in the Build resource's results field. If any objects fail to be pushed, the build is marked FAILURE.
  final ArtifactObjectsResponse objects;

  /// A list of Python packages to be uploaded to Artifact Registry upon successful completion of all build steps. The build service account credentials will be used to perform the upload. If any objects fail to be pushed, the build is marked FAILURE.
  final List<PythonPackageResponse> pythonPackages;

  ArtifactsResponse({
    required this.images,
    required this.mavenArtifacts,
    required this.npmPackages,
    required this.objects,
    required this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['images'] = images;
    map['mavenArtifacts'] =
        Input.encodeList<MavenArtifactResponse, Map<String, dynamic>>(
            mavenArtifacts, (value) => value.toMap());
    map['npmPackages'] =
        Input.encodeList<NpmPackageResponse, Map<String, dynamic>>(
            npmPackages, (value) => value.toMap());
    map['objects'] = objects.toMap();
    map['pythonPackages'] =
        Input.encodeList<PythonPackageResponse, Map<String, dynamic>>(
            pythonPackages, (value) => value.toMap());
    return map;
  }

  factory ArtifactsResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactsResponse(
      images: (map['images'] as List).cast<String>(),
      mavenArtifacts: Input.decodeList<MavenArtifactResponse>(
          map['mavenArtifacts'],
          (value) => MavenArtifactResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      npmPackages: Input.decodeList<NpmPackageResponse>(
          map['npmPackages'],
          (value) => NpmPackageResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      objects: ArtifactObjectsResponse.fromMap(
          (map['objects'] as Map).cast<String, dynamic>()),
      pythonPackages: Input.decodeList<PythonPackageResponse>(
          map['pythonPackages'],
          (value) => PythonPackageResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
