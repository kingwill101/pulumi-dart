// ignore_for_file: unused_element, unnecessary_cast

import 'build_info_response.dart';
import 'cloud_build_options_response_appengine_v1beta.dart';
import 'container_info_response_appengine_v1beta.dart';
import 'zip_info_response_appengine_v1beta.dart';

/// Code and application artifacts used to deploy a version to App Engine.
class DeploymentResponseAppengineV1beta {
  /// Google Cloud Build build information. Only applicable for instances running in the App Engine flexible environment.
  final BuildInfoResponse build;

  /// Options for any Google Cloud Build builds created as a part of this deployment.These options will only be used if a new build is created, such as when deploying to the App Engine flexible environment using files or zip.
  final CloudBuildOptionsResponseAppengineV1beta cloudBuildOptions;

  /// The Docker image for the container that runs the version. Only applicable for instances running in the App Engine flexible environment.
  final ContainerInfoResponseAppengineV1beta container;

  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version. All files must be readable using the credentials supplied with this call.
  final Map<String, String> files;

  /// The zip file for this deployment, if this is a zip deployment.
  final ZipInfoResponseAppengineV1beta zip;

  DeploymentResponseAppengineV1beta({
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

  factory DeploymentResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return DeploymentResponseAppengineV1beta(
      build: BuildInfoResponse.fromMap(
          (map['build'] as Map).cast<String, dynamic>()),
      cloudBuildOptions: CloudBuildOptionsResponseAppengineV1beta.fromMap(
          (map['cloudBuildOptions'] as Map).cast<String, dynamic>()),
      container: ContainerInfoResponseAppengineV1beta.fromMap(
          (map['container'] as Map).cast<String, dynamic>()),
      files: (map['files'] as Map).cast<String, String>(),
      zip: ZipInfoResponseAppengineV1beta.fromMap(
          (map['zip'] as Map).cast<String, dynamic>()),
    );
  }
}
