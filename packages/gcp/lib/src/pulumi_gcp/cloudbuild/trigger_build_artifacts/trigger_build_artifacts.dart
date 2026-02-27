// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../trigger_build_artifacts_maven_artifact/trigger_build_artifacts_maven_artifact.dart';
import '../trigger_build_artifacts_npm_package/trigger_build_artifacts_npm_package.dart';
import '../trigger_build_artifacts_objects/trigger_build_artifacts_objects.dart';
import '../trigger_build_artifacts_python_package/trigger_build_artifacts_python_package.dart';

class TriggerBuildArtifacts {
  /// A list of images to be pushed upon the successful completion of all build steps.
  /// The images will be pushed using the builder service account's credentials.
  /// The digests of the pushed images will be stored in the Build resource's results field.
  /// If any of the images fail to be pushed, the build is marked FAILURE.
  final List<String>? images;

  /// A Maven artifact to upload to Artifact Registry upon successful completion of all build steps.
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  /// If any objects fail to be pushed, the build is marked FAILURE.
  /// Structure is documented below.
  final List<TriggerBuildArtifactsMavenArtifact>? mavenArtifacts;

  /// Npm package to upload to Artifact Registry upon successful completion of all build steps.
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  /// If any objects fail to be pushed, the build is marked FAILURE.
  /// Structure is documented below.
  final List<TriggerBuildArtifactsNpmPackage>? npmPackages;

  /// A list of objects to be uploaded to Cloud Storage upon successful completion of all build steps.
  /// Files in the workspace matching specified paths globs will be uploaded to the
  /// Cloud Storage location using the builder service account's credentials.
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  /// If any objects fail to be pushed, the build is marked FAILURE.
  /// Structure is documented below.
  final TriggerBuildArtifactsObjects? objects;

  /// Python package to upload to Artifact Registry upon successful completion of all build steps. A package can encapsulate multiple objects to be uploaded to a single repository.
  /// The location and generation of the uploaded objects will be stored in the Build resource's results field.
  /// If any objects fail to be pushed, the build is marked FAILURE.
  /// Structure is documented below.
  final List<TriggerBuildArtifactsPythonPackage>? pythonPackages;

  TriggerBuildArtifacts({
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
      map['mavenArtifacts'] = pulumi.Input.encodeList<
          TriggerBuildArtifactsMavenArtifact,
          Map<String, dynamic>>(mavenArtifactsValue, (value) => value.toMap());
    }
    final npmPackagesValue = npmPackages;
    if (npmPackagesValue != null) {
      map['npmPackages'] = pulumi.Input.encodeList<
          TriggerBuildArtifactsNpmPackage,
          Map<String, dynamic>>(npmPackagesValue, (value) => value.toMap());
    }
    final objectsValue = objects;
    if (objectsValue != null) {
      map['objects'] = objectsValue.toMap();
    }
    final pythonPackagesValue = pythonPackages;
    if (pythonPackagesValue != null) {
      map['pythonPackages'] = pulumi.Input.encodeList<
          TriggerBuildArtifactsPythonPackage,
          Map<String, dynamic>>(pythonPackagesValue, (value) => value.toMap());
    }
    return map;
  }

  factory TriggerBuildArtifacts.fromMap(Map<String, dynamic> map) {
    return TriggerBuildArtifacts(
      images:
          map['images'] == null ? null : (map['images'] as List).cast<String>(),
      mavenArtifacts: map['mavenArtifacts'] == null
          ? null
          : pulumi.Input.decodeList<TriggerBuildArtifactsMavenArtifact>(
              map['mavenArtifacts'],
              (value) => TriggerBuildArtifactsMavenArtifact.fromMap(
                  (value as Map).cast<String, dynamic>())),
      npmPackages: map['npmPackages'] == null
          ? null
          : pulumi.Input.decodeList<TriggerBuildArtifactsNpmPackage>(
              map['npmPackages'],
              (value) => TriggerBuildArtifactsNpmPackage.fromMap(
                  (value as Map).cast<String, dynamic>())),
      objects: map['objects'] == null
          ? null
          : TriggerBuildArtifactsObjects.fromMap(
              (map['objects'] as Map).cast<String, dynamic>()),
      pythonPackages: map['pythonPackages'] == null
          ? null
          : pulumi.Input.decodeList<TriggerBuildArtifactsPythonPackage>(
              map['pythonPackages'],
              (value) => TriggerBuildArtifactsPythonPackage.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
