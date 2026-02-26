// ignore_for_file: unused_element, unnecessary_cast

import 'build_info_response.dart';
import 'cloud_build_options_response2.dart';
import 'container_info_response2.dart';
import 'zip_info_response2.dart';

/// Code and application artifacts used to deploy a version to App Engine.
class DeploymentResponse2 {
  /// Google Cloud Build build information. Only applicable for instances running in the App Engine flexible environment.
  final BuildInfoResponse build;

  /// Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  final CloudBuildOptionsResponse2 cloudBuildOptions;

  /// The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  final ContainerInfoResponse2 container;

  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  final Map<String, String> files;

  /// The zip file for this deployment, if this is a zip deployment.
  final ZipInfoResponse2 zip;

  DeploymentResponse2({
    required this.build,
    required this.cloudBuildOptions,
    required this.container,
    required this.files,
    required this.zip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['build'] = build.toMap();
    map['cloudBuildOptions'] = cloudBuildOptions.toMap();
    map['container'] = container.toMap();
    map['files'] = files;
    map['zip'] = zip.toMap();
    return map;
  }

  factory DeploymentResponse2.fromMap(Map<String, dynamic> map) {
    return DeploymentResponse2(
      build: BuildInfoResponse.fromMap(
          (map['build'] as Map).cast<String, dynamic>()),
      cloudBuildOptions: CloudBuildOptionsResponse2.fromMap(
          (map['cloudBuildOptions'] as Map).cast<String, dynamic>()),
      container: ContainerInfoResponse2.fromMap(
          (map['container'] as Map).cast<String, dynamic>()),
      files: (map['files'] as Map).cast<String, String>(),
      zip:
          ZipInfoResponse2.fromMap((map['zip'] as Map).cast<String, dynamic>()),
    );
  }
}
