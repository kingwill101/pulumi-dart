// ignore_for_file: unused_element, unnecessary_cast

import 'build_info.dart';
import 'cloud_build_options2.dart';
import 'container_info2.dart';
import 'zip_info2.dart';

/// Code and application artifacts used to deploy a version to App Engine.
class DeploymentType2 {
  /// Google Cloud Build build information. Only applicable for instances running in the App Engine flexible environment.
  final BuildInfo? build;

  /// Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  final CloudBuildOptions2? cloudBuildOptions;

  /// The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  final ContainerInfo2? container;

  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  final Map<String, String>? files;

  /// The zip file for this deployment, if this is a zip deployment.
  final ZipInfo2? zip;

  DeploymentType2({
    this.build,
    this.cloudBuildOptions,
    this.container,
    this.files,
    this.zip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final buildValue = build;
    if (buildValue != null) {
      map['build'] = buildValue.toMap();
    }
    final cloudBuildOptionsValue = cloudBuildOptions;
    if (cloudBuildOptionsValue != null) {
      map['cloudBuildOptions'] = cloudBuildOptionsValue.toMap();
    }
    final containerValue = container;
    if (containerValue != null) {
      map['container'] = containerValue.toMap();
    }
    final filesValue = files;
    if (filesValue != null) {
      map['files'] = filesValue;
    }
    final zipValue = zip;
    if (zipValue != null) {
      map['zip'] = zipValue.toMap();
    }
    return map;
  }

  factory DeploymentType2.fromMap(Map<String, dynamic> map) {
    return DeploymentType2(
      build: map['build'] == null
          ? null
          : BuildInfo.fromMap((map['build'] as Map).cast<String, dynamic>()),
      cloudBuildOptions: map['cloudBuildOptions'] == null
          ? null
          : CloudBuildOptions2.fromMap(
              (map['cloudBuildOptions'] as Map).cast<String, dynamic>()),
      container: map['container'] == null
          ? null
          : ContainerInfo2.fromMap(
              (map['container'] as Map).cast<String, dynamic>()),
      files: map['files'] == null
          ? null
          : (map['files'] as Map).cast<String, String>(),
      zip: map['zip'] == null
          ? null
          : ZipInfo2.fromMap((map['zip'] as Map).cast<String, dynamic>()),
    );
  }
}
