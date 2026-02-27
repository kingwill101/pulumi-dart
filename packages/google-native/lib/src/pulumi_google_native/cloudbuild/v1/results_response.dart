// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'built_image_response.dart';
import 'time_span_response.dart';
import 'uploaded_maven_artifact_response.dart';
import 'uploaded_npm_package_response.dart';
import 'uploaded_python_package_response.dart';

/// Artifacts created by the build pipeline.
class ResultsResponse {
  /// Path to the artifact manifest for non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.
  final String artifactManifest;

  /// Time to push all non-container artifacts to Cloud Storage.
  final TimeSpanResponse artifactTiming;

  /// List of build step digests, in the order corresponding to build step indices.
  final List<String> buildStepImages;

  /// List of build step outputs, produced by builder images, in the order corresponding to build step indices. [Cloud Builders](https://cloud.google.com/cloud-build/docs/cloud-builders) can produce this output by writing to `$BUILDER_OUTPUT/output`. Only the first 50KB of data is stored.
  final List<String> buildStepOutputs;

  /// Container images that were built as a part of the build.
  final List<BuiltImageResponse> images;

  /// Maven artifacts uploaded to Artifact Registry at the end of the build.
  final List<UploadedMavenArtifactResponse> mavenArtifacts;

  /// Npm packages uploaded to Artifact Registry at the end of the build.
  final List<UploadedNpmPackageResponse> npmPackages;

  /// Number of non-container artifacts uploaded to Cloud Storage. Only populated when artifacts are uploaded to Cloud Storage.
  final String numArtifacts;

  /// Python artifacts uploaded to Artifact Registry at the end of the build.
  final List<UploadedPythonPackageResponse> pythonPackages;

  ResultsResponse({
    required this.artifactManifest,
    required this.artifactTiming,
    required this.buildStepImages,
    required this.buildStepOutputs,
    required this.images,
    required this.mavenArtifacts,
    required this.npmPackages,
    required this.numArtifacts,
    required this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['artifactManifest'] = artifactManifest;
    map['artifactTiming'] = artifactTiming.toMap();
    map['buildStepImages'] = buildStepImages;
    map['buildStepOutputs'] = buildStepOutputs;
    map['images'] = Input.encodeList<BuiltImageResponse, Map<String, dynamic>>(
        images, (value) => value.toMap());
    map['mavenArtifacts'] =
        Input.encodeList<UploadedMavenArtifactResponse, Map<String, dynamic>>(
            mavenArtifacts, (value) => value.toMap());
    map['npmPackages'] =
        Input.encodeList<UploadedNpmPackageResponse, Map<String, dynamic>>(
            npmPackages, (value) => value.toMap());
    map['numArtifacts'] = numArtifacts;
    map['pythonPackages'] =
        Input.encodeList<UploadedPythonPackageResponse, Map<String, dynamic>>(
            pythonPackages, (value) => value.toMap());
    return map;
  }

  factory ResultsResponse.fromMap(Map<String, dynamic> map) {
    return ResultsResponse(
      artifactManifest: map['artifactManifest'] as String,
      artifactTiming: TimeSpanResponse.fromMap(
          (map['artifactTiming'] as Map).cast<String, dynamic>()),
      buildStepImages: (map['buildStepImages'] as List).cast<String>(),
      buildStepOutputs: (map['buildStepOutputs'] as List).cast<String>(),
      images: Input.decodeList<BuiltImageResponse>(
          map['images'],
          (value) => BuiltImageResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      mavenArtifacts: Input.decodeList<UploadedMavenArtifactResponse>(
          map['mavenArtifacts'],
          (value) => UploadedMavenArtifactResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      npmPackages: Input.decodeList<UploadedNpmPackageResponse>(
          map['npmPackages'],
          (value) => UploadedNpmPackageResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      numArtifacts: map['numArtifacts'] as String,
      pythonPackages: Input.decodeList<UploadedPythonPackageResponse>(
          map['pythonPackages'],
          (value) => UploadedPythonPackageResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
