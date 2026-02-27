// ignore_for_file: unused_element, unnecessary_cast

import 'build_info.dart';
import 'cloud_build_options_appengine_v1beta.dart';
import 'container_info_appengine_v1beta.dart';
import 'zip_info_appengine_v1beta.dart';

/// Code and application artifacts used to deploy a version to App Engine.
class DeploymentAppengineV1beta {
  /// Google Cloud Build build information. Only applicable for instances running in the App Engine flexible environment.
  final BuildInfo? build;

  /// Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  final CloudBuildOptionsAppengineV1beta? cloudBuildOptions;

  /// The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  final ContainerInfoAppengineV1beta? container;

  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  final Map<String, String>? files;

  /// The zip file for this deployment, if this is a zip deployment.
  final ZipInfoAppengineV1beta? zip;

  DeploymentAppengineV1beta({
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

  factory DeploymentAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return DeploymentAppengineV1beta(
      build: map['build'] == null
          ? null
          : BuildInfo.fromMap((map['build'] as Map).cast<String, dynamic>()),
      cloudBuildOptions: map['cloudBuildOptions'] == null
          ? null
          : CloudBuildOptionsAppengineV1beta.fromMap(
              (map['cloudBuildOptions'] as Map).cast<String, dynamic>()),
      container: map['container'] == null
          ? null
          : ContainerInfoAppengineV1beta.fromMap(
              (map['container'] as Map).cast<String, dynamic>()),
      files: map['files'] == null
          ? null
          : (map['files'] as Map).cast<String, String>(),
      zip: map['zip'] == null
          ? null
          : ZipInfoAppengineV1beta.fromMap(
              (map['zip'] as Map).cast<String, dynamic>()),
    );
  }
}
