// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_trigger_build_artifact_maven_artifact/get_trigger_build_artifact_maven_artifact.dart';
import '../get_trigger_build_artifact_npm_package/get_trigger_build_artifact_npm_package.dart';
import '../get_trigger_build_artifact_object/get_trigger_build_artifact_object.dart';
import '../get_trigger_build_artifact_python_package/get_trigger_build_artifact_python_package.dart';

class GetTriggerBuildArtifact {
  /// A list of images to be pushed upon the successful completion of all build steps.
  ///
  /// The images will be pushed using the builder service account's credentials.
  ///
  /// The digests of the pushed images will be stored in the Build resource's results field.
  ///
  /// If any of the images fail to be pushed, the build is marked FAILURE.
  final List<String> images;

  /// A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.
  ///
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  ///
  /// If any objects fail to be pushed, the build is marked FAILURE.
  final List<GetTriggerBuildArtifactMavenArtifact> mavenArtifacts;

  /// Npm package to upload to Artifact Registry upon successful completion of all build steps.
  ///
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  ///
  /// If any objects fail to be pushed, the build is marked FAILURE.
  final List<GetTriggerBuildArtifactNpmPackage> npmPackages;

  /// A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps.
  ///
  /// Files in the workspace matching specified paths globs will be uploaded to the
  /// Cloud Storage location using the builder service account's credentials.
  ///
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  ///
  /// If any objects fail to be pushed, the build is marked FAILURE.
  final List<GetTriggerBuildArtifactObject> objects;

  /// Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.
  ///
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  ///
  /// If any objects fail to be pushed, the build is marked FAILURE.
  final List<GetTriggerBuildArtifactPythonPackage> pythonPackages;

  GetTriggerBuildArtifact({
    required this.images,
    required this.mavenArtifacts,
    required this.npmPackages,
    required this.objects,
    required this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['images'] = images;
    map['mavenArtifacts'] = Input.encodeList<
        GetTriggerBuildArtifactMavenArtifact,
        Map<String, dynamic>>(mavenArtifacts, (value) => value.toMap());
    map['npmPackages'] = Input.encodeList<GetTriggerBuildArtifactNpmPackage,
        Map<String, dynamic>>(npmPackages, (value) => value.toMap());
    map['objects'] =
        Input.encodeList<GetTriggerBuildArtifactObject, Map<String, dynamic>>(
            objects, (value) => value.toMap());
    map['pythonPackages'] = Input.encodeList<
        GetTriggerBuildArtifactPythonPackage,
        Map<String, dynamic>>(pythonPackages, (value) => value.toMap());
    return map;
  }

  factory GetTriggerBuildArtifact.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildArtifact(
      images: (map['images'] as List).cast<String>(),
      mavenArtifacts: Input.decodeList<GetTriggerBuildArtifactMavenArtifact>(
          map['mavenArtifacts'],
          (value) => GetTriggerBuildArtifactMavenArtifact.fromMap(
              (value as Map).cast<String, dynamic>())),
      npmPackages: Input.decodeList<GetTriggerBuildArtifactNpmPackage>(
          map['npmPackages'],
          (value) => GetTriggerBuildArtifactNpmPackage.fromMap(
              (value as Map).cast<String, dynamic>())),
      objects: Input.decodeList<GetTriggerBuildArtifactObject>(
          map['objects'],
          (value) => GetTriggerBuildArtifactObject.fromMap(
              (value as Map).cast<String, dynamic>())),
      pythonPackages: Input.decodeList<GetTriggerBuildArtifactPythonPackage>(
          map['pythonPackages'],
          (value) => GetTriggerBuildArtifactPythonPackage.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
