// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_app_version_deployment_cloud_build_options.dart';
import 'flexible_app_version_deployment_container.dart';
import 'flexible_app_version_deployment_file.dart';
import 'flexible_app_version_deployment_zip.dart';

class FlexibleAppVersionDeployment {
  /// Options for the build operations performed as a part of the version deployment. Only applicable when creating a version using source code directly.
  /// Structure is documented below.
  final FlexibleAppVersionDeploymentCloudBuildOptions? cloudBuildOptions;
  /// The Docker image for the container that runs the version.
  /// Structure is documented below.
  final FlexibleAppVersionDeploymentContainer? container;
  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version.
  /// All files must be readable using the credentials supplied with this call.
  /// Structure is documented below.
  final List<FlexibleAppVersionDeploymentFile>? files;
  /// Zip File
  /// Structure is documented below.
  final FlexibleAppVersionDeploymentZip? zip;

  /// Creates a new [FlexibleAppVersionDeployment].
  /// [cloudBuildOptions] Options for the build operations performed as a part of the version deployment. Only applicable when creating a version using source code directly.
  /// [container] The Docker image for the container that runs the version.
  /// [files] Manifest of the files stored in Google Cloud Storage that are included as part of this version.
  /// [zip] Zip File
  FlexibleAppVersionDeployment({
    this.cloudBuildOptions,
    this.container,
    this.files,
    this.zip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudBuildOptions': ?cloudBuildOptions == null ? null : cloudBuildOptions!.toMap(),
      'container': ?container == null ? null : container!.toMap(),
      'files': ?files == null ? null : pulumi.Input.encodeList<FlexibleAppVersionDeploymentFile, Map<String, dynamic>>(files!, (value) => value.toMap()),
      'zip': ?zip == null ? null : zip!.toMap(),
    };
  }

  factory FlexibleAppVersionDeployment.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionDeployment(
      cloudBuildOptions: map['cloudBuildOptions'] == null ? null : FlexibleAppVersionDeploymentCloudBuildOptions.fromMap((map['cloudBuildOptions'] as Map).cast<String, dynamic>()),
      container: map['container'] == null ? null : FlexibleAppVersionDeploymentContainer.fromMap((map['container'] as Map).cast<String, dynamic>()),
      files: map['files'] == null ? null : pulumi.Input.decodeList<FlexibleAppVersionDeploymentFile>(map['files'], (value) => FlexibleAppVersionDeploymentFile.fromMap((value as Map).cast<String, dynamic>())),
      zip: map['zip'] == null ? null : FlexibleAppVersionDeploymentZip.fromMap((map['zip'] as Map).cast<String, dynamic>()),
    );
  }
}

