// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_app_version_deployment_file.dart';
import 'standard_app_version_deployment_zip.dart';

class StandardAppVersionDeployment {
  /// Manifest of the files stored in Google Cloud Storage that are included as part of this version.
  /// All files must be readable using the credentials supplied with this call.
  /// Structure is documented below.
  final List<StandardAppVersionDeploymentFile>? files;

  /// Zip File
  /// Structure is documented below.
  final StandardAppVersionDeploymentZip? zip;

  /// Creates a new [StandardAppVersionDeployment].
  /// [files] Manifest of the files stored in Google Cloud Storage that are included as part of this version.
  /// [zip] Zip File
  StandardAppVersionDeployment({
    this.files,
    this.zip,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filesValue = files;
    if (filesValue != null) {
      map['files'] = pulumi.Input.encodeList<StandardAppVersionDeploymentFile,
          Map<String, dynamic>>(filesValue, (value) => value.toMap());
    }
    final zipValue = zip;
    if (zipValue != null) {
      map['zip'] = zipValue.toMap();
    }
    return map;
  }

  factory StandardAppVersionDeployment.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionDeployment(
      files: map['files'] == null
          ? null
          : pulumi.Input.decodeList<StandardAppVersionDeploymentFile>(
              map['files'],
              (value) => StandardAppVersionDeploymentFile.fromMap(
                  (value as Map).cast<String, dynamic>())),
      zip: map['zip'] == null
          ? null
          : StandardAppVersionDeploymentZip.fromMap(
              (map['zip'] as Map).cast<String, dynamic>()),
    );
  }
}
