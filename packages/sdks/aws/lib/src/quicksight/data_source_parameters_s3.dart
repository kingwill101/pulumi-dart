// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_parameters_s3_manifest_file_location.dart';

class DataSourceParametersS3 {
  /// An object containing the S3 location of the S3 manifest file.
  final pulumi.Input<DataSourceParametersS3ManifestFileLocation> manifestFileLocation;
  /// Use the `role_arn` to override an account-wide role for a specific S3 data source. For example, say an account administrator has turned off all S3 access with an account-wide role. The administrator can then use `role_arn` to bypass the account-wide role and allow S3 access for the single S3 data source that is specified in the structure, even if the account-wide role forbidding S3 access is still active.
  final pulumi.Input<String>? roleArn;

  /// Creates a new [DataSourceParametersS3].
  /// [manifestFileLocation] An object containing the S3 location of the S3 manifest file.
  /// [roleArn] Use the `role_arn` to override an account-wide role for a specific S3 data source. For example, say an account administrator has turned off all S3 access with an account-wide role. The administrator can then use `role_arn` to bypass the account-wide role and allow S3 access for the single S3 data source that is specified in the structure, even if the account-wide role forbidding S3 access is still active.
  DataSourceParametersS3({
    required this.manifestFileLocation,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manifestFileLocation': pulumi.Input.mapInputValue<DataSourceParametersS3ManifestFileLocation, Map<String, dynamic>>(manifestFileLocation, (value) => value.toMap()),
      'roleArn': ?roleArn,
    };
  }

  factory DataSourceParametersS3.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersS3(
      manifestFileLocation: (DataSourceParametersS3ManifestFileLocation.fromMap((map['manifestFileLocation'] as Map).cast<String, dynamic>())).input(),
      roleArn: map['roleArn'] == null ? null : (map['roleArn'] as String).input(),
    );
  }
}

