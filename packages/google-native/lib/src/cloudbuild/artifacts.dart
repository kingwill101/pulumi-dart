// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_objects.dart';
import 'maven_artifact.dart';
import 'npm_package.dart';
import 'python_package.dart';

/// Artifacts produced by a build that should be uploaded upon successful completion of all build steps.
class Artifacts {
  /// A list of images to be pushed upon the successful completion of all build steps. The images will be pushed using the builder service account's credentials. The digests of the pushed images will be stored in the Build resource's results field. If any of the images fail to be pushed, the build is marked FAILURE.
  final List<String>? images;

  /// A list of Maven artifacts to be uploaded to Artifact Registry upon successful completion of all build steps. Artifacts in the workspace matching specified paths globs will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any artifacts fail to be pushed, the build is marked FAILURE.
  final List<MavenArtifact>? mavenArtifacts;

  /// A list of npm packages to be uploaded to Artifact Registry upon successful completion of all build steps. Npm packages in the specified paths will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any packages fail to be pushed, the build is marked FAILURE.
  final List<NpmPackage>? npmPackages;

  /// A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. Files in the workspace matching specified paths globs will be uploaded to the specified Cloud Storage location using the builder service account's credentials. The location and generation of the uploaded objects will be stored in the Build resource's results field. If any objects fail to be pushed, the build is marked FAILURE.
  final ArtifactObjects? objects;

  /// A list of Python packages to be uploaded to Artifact Registry upon successful completion of all build steps. The build service account credentials will be used to perform the upload. If any objects fail to be pushed, the build is marked FAILURE.
  final List<PythonPackage>? pythonPackages;

  /// Creates a new [Artifacts].
  /// [images] A list of images to be pushed upon the successful completion of all build steps. The images will be pushed using the builder service account's credentials. The digests of the pushed images will be stored in the Build resource's results field. If any of the images fail to be pushed, the build is marked FAILURE.
  /// [mavenArtifacts] A list of Maven artifacts to be uploaded to Artifact Registry upon successful completion of all build steps. Artifacts in the workspace matching specified paths globs will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any artifacts fail to be pushed, the build is marked FAILURE.
  /// [npmPackages] A list of npm packages to be uploaded to Artifact Registry upon successful completion of all build steps. Npm packages in the specified paths will be uploaded to the specified Artifact Registry repository using the builder service account's credentials. If any packages fail to be pushed, the build is marked FAILURE.
  /// [objects] A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps. Files in the workspace matching specified paths globs will be uploaded to the specified Cloud Storage location using the builder service account's credentials. The location and generation of the uploaded objects will be stored in the Build resource's results field. If any objects fail to be pushed, the build is marked FAILURE.
  /// [pythonPackages] A list of Python packages to be uploaded to Artifact Registry upon successful completion of all build steps. The build service account credentials will be used to perform the upload. If any objects fail to be pushed, the build is marked FAILURE.
  Artifacts({
    this.images,
    this.mavenArtifacts,
    this.npmPackages,
    this.objects,
    this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imagesValue = images;
    if (imagesValue != null) {
      map['images'] = imagesValue;
    }
    final mavenArtifactsValue = mavenArtifacts;
    if (mavenArtifactsValue != null) {
      map['mavenArtifacts'] =
          pulumi.Input.encodeList<MavenArtifact, Map<String, dynamic>>(
              mavenArtifactsValue, (value) => value.toMap());
    }
    final npmPackagesValue = npmPackages;
    if (npmPackagesValue != null) {
      map['npmPackages'] =
          pulumi.Input.encodeList<NpmPackage, Map<String, dynamic>>(
              npmPackagesValue, (value) => value.toMap());
    }
    final objectsValue = objects;
    if (objectsValue != null) {
      map['objects'] = objectsValue.toMap();
    }
    final pythonPackagesValue = pythonPackages;
    if (pythonPackagesValue != null) {
      map['pythonPackages'] =
          pulumi.Input.encodeList<PythonPackage, Map<String, dynamic>>(
              pythonPackagesValue, (value) => value.toMap());
    }
    return map;
  }

  factory Artifacts.fromMap(Map<String, dynamic> map) {
    return Artifacts(
      images:
          map['images'] == null ? null : (map['images'] as List).cast<String>(),
      mavenArtifacts: map['mavenArtifacts'] == null
          ? null
          : pulumi.Input.decodeList<MavenArtifact>(
              map['mavenArtifacts'],
              (value) => MavenArtifact.fromMap(
                  (value as Map).cast<String, dynamic>())),
      npmPackages: map['npmPackages'] == null
          ? null
          : pulumi.Input.decodeList<NpmPackage>(
              map['npmPackages'],
              (value) =>
                  NpmPackage.fromMap((value as Map).cast<String, dynamic>())),
      objects: map['objects'] == null
          ? null
          : ArtifactObjects.fromMap(
              (map['objects'] as Map).cast<String, dynamic>()),
      pythonPackages: map['pythonPackages'] == null
          ? null
          : pulumi.Input.decodeList<PythonPackage>(
              map['pythonPackages'],
              (value) => PythonPackage.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
