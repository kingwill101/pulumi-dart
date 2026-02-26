// ignore_for_file: unused_element, unnecessary_cast

import '../idc_application_service_integration_lake_formation/idc_application_service_integration_lake_formation.dart';
import '../idc_application_service_integration_redshift/idc_application_service_integration_redshift.dart';
import '../idc_application_service_integration_s3_access_grants/idc_application_service_integration_s3_access_grants.dart';

class IdcApplicationServiceIntegration {
  /// List of scopes set up for Lake Formation integration. Refer to the<span pulumi-lang-nodejs=" lakeFormation " pulumi-lang-dotnet=" LakeFormation " pulumi-lang-go=" lakeFormation " pulumi-lang-python=" lake_formation " pulumi-lang-yaml=" lakeFormation " pulumi-lang-java=" lakeFormation "> lake_formation </span>documentation for more details.
  final IdcApplicationServiceIntegrationLakeFormation? lakeFormation;

  /// List of scopes set up for Redshift integration. Refer to the redshift documentation for more details.
  final IdcApplicationServiceIntegrationRedshift? redshift;

  /// List of scopes set up for S3 Access Grants integration. Refer to the<span pulumi-lang-nodejs=" s3AccessGrants " pulumi-lang-dotnet=" S3AccessGrants " pulumi-lang-go=" s3AccessGrants " pulumi-lang-python=" s3_access_grants " pulumi-lang-yaml=" s3AccessGrants " pulumi-lang-java=" s3AccessGrants "> s3_access_grants </span>documentation for more details.
  final IdcApplicationServiceIntegrationS3AccessGrants? s3AccessGrants;

  IdcApplicationServiceIntegration({
    this.lakeFormation,
    this.redshift,
    this.s3AccessGrants,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final lakeFormationValue = lakeFormation;
    if (lakeFormationValue != null) {
      map['lakeFormation'] = lakeFormationValue.toMap();
    }
    final redshiftValue = redshift;
    if (redshiftValue != null) {
      map['redshift'] = redshiftValue.toMap();
    }
    final s3AccessGrantsValue = s3AccessGrants;
    if (s3AccessGrantsValue != null) {
      map['s3AccessGrants'] = s3AccessGrantsValue.toMap();
    }
    return map;
  }

  factory IdcApplicationServiceIntegration.fromMap(Map<String, dynamic> map) {
    return IdcApplicationServiceIntegration(
      lakeFormation: map['lakeFormation'] == null
          ? null
          : IdcApplicationServiceIntegrationLakeFormation.fromMap(
              (map['lakeFormation'] as Map).cast<String, dynamic>()),
      redshift: map['redshift'] == null
          ? null
          : IdcApplicationServiceIntegrationRedshift.fromMap(
              (map['redshift'] as Map).cast<String, dynamic>()),
      s3AccessGrants: map['s3AccessGrants'] == null
          ? null
          : IdcApplicationServiceIntegrationS3AccessGrants.fromMap(
              (map['s3AccessGrants'] as Map).cast<String, dynamic>()),
    );
  }
}
