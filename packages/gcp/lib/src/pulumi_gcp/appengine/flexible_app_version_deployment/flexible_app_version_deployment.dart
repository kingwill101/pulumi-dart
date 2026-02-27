// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../flexible_app_version_deployment_cloud_build_options/flexible_app_version_deployment_cloud_build_options.dart';
import '../flexible_app_version_deployment_container/flexible_app_version_deployment_container.dart';
import '../flexible_app_version_deployment_file/flexible_app_version_deployment_file.dart';
import '../flexible_app_version_deployment_zip/flexible_app_version_deployment_zip.dart';

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

  FlexibleAppVersionDeployment({
    this.cloudBuildOptions,
    this.container,
    this.files,
    this.zip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
      map['files'] = pulumi.Input.encodeList<FlexibleAppVersionDeploymentFile,
          Map<String, dynamic>>(filesValue, (value) => value.toMap());
    }
    final zipValue = zip;
    if (zipValue != null) {
      map['zip'] = zipValue.toMap();
    }
    return map;
  }

  factory FlexibleAppVersionDeployment.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionDeployment(
      cloudBuildOptions: map['cloudBuildOptions'] == null
          ? null
          : FlexibleAppVersionDeploymentCloudBuildOptions.fromMap(
              (map['cloudBuildOptions'] as Map).cast<String, dynamic>()),
      container: map['container'] == null
          ? null
          : FlexibleAppVersionDeploymentContainer.fromMap(
              (map['container'] as Map).cast<String, dynamic>()),
      files: map['files'] == null
          ? null
          : pulumi.Input.decodeList<FlexibleAppVersionDeploymentFile>(
              map['files'],
              (value) => FlexibleAppVersionDeploymentFile.fromMap(
                  (value as Map).cast<String, dynamic>())),
      zip: map['zip'] == null
          ? null
          : FlexibleAppVersionDeploymentZip.fromMap(
              (map['zip'] as Map).cast<String, dynamic>()),
    );
  }
}
