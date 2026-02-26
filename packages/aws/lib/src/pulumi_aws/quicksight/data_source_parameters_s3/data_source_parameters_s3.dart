// ignore_for_file: unused_element, unnecessary_cast

import '../data_source_parameters_s3_manifest_file_location/data_source_parameters_s3_manifest_file_location.dart';

class DataSourceParametersS3 {
  /// An object containing the S3 location of the S3 manifest file.
  final DataSourceParametersS3ManifestFileLocation manifestFileLocation;

  /// Use the <span pulumi-lang-nodejs="`roleArn`" pulumi-lang-dotnet="`RoleArn`" pulumi-lang-go="`roleArn`" pulumi-lang-python="`role_arn`" pulumi-lang-yaml="`roleArn`" pulumi-lang-java="`roleArn`">`role_arn`</span> to override an account-wide role for a specific S3 data source. For example, say an account administrator has turned off all S3 access with an account-wide role. The administrator can then use <span pulumi-lang-nodejs="`roleArn`" pulumi-lang-dotnet="`RoleArn`" pulumi-lang-go="`roleArn`" pulumi-lang-python="`role_arn`" pulumi-lang-yaml="`roleArn`" pulumi-lang-java="`roleArn`">`role_arn`</span> to bypass the account-wide role and allow S3 access for the single S3 data source that is specified in the structure, even if the account-wide role forbidding S3 access is still active.
  final String? roleArn;

  DataSourceParametersS3({
    required this.manifestFileLocation,
    this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['manifestFileLocation'] = manifestFileLocation.toMap();
    final roleArnValue = roleArn;
    if (roleArnValue != null) {
      map['roleArn'] = roleArnValue;
    }
    return map;
  }

  factory DataSourceParametersS3.fromMap(Map<String, dynamic> map) {
    return DataSourceParametersS3(
      manifestFileLocation: DataSourceParametersS3ManifestFileLocation.fromMap(
          (map['manifestFileLocation'] as Map).cast<String, dynamic>()),
      roleArn: map['roleArn'] == null ? null : map['roleArn'] as String,
    );
  }
}
