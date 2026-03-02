// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idc_application_service_integration_lake_formation.dart';
import 'idc_application_service_integration_redshift.dart';
import 'idc_application_service_integration_s3_access_grants.dart';

class IdcApplicationServiceIntegration {
  /// List of scopes set up for Lake Formation integration. Refer to the lake_formation documentation for more details.
  final pulumi.Input<IdcApplicationServiceIntegrationLakeFormation>? lakeFormation;
  /// List of scopes set up for Redshift integration. Refer to the redshift documentation for more details.
  final pulumi.Input<IdcApplicationServiceIntegrationRedshift>? redshift;
  /// List of scopes set up for S3 Access Grants integration. Refer to the s3_access_grants documentation for more details.
  final pulumi.Input<IdcApplicationServiceIntegrationS3AccessGrants>? s3AccessGrants;

  /// Creates a new [IdcApplicationServiceIntegration].
  /// [lakeFormation] List of scopes set up for Lake Formation integration. Refer to the lake_formation documentation for more details.
  /// [redshift] List of scopes set up for Redshift integration. Refer to the redshift documentation for more details.
  /// [s3AccessGrants] List of scopes set up for S3 Access Grants integration. Refer to the s3_access_grants documentation for more details.
  IdcApplicationServiceIntegration({
    this.lakeFormation,
    this.redshift,
    this.s3AccessGrants,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeFormation': ?pulumi.Input.mapOptionalInputValue<IdcApplicationServiceIntegrationLakeFormation, Map<String, dynamic>>(lakeFormation, (value) => value.toMap()),
      'redshift': ?pulumi.Input.mapOptionalInputValue<IdcApplicationServiceIntegrationRedshift, Map<String, dynamic>>(redshift, (value) => value.toMap()),
      's3AccessGrants': ?pulumi.Input.mapOptionalInputValue<IdcApplicationServiceIntegrationS3AccessGrants, Map<String, dynamic>>(s3AccessGrants, (value) => value.toMap()),
    };
  }

  factory IdcApplicationServiceIntegration.fromMap(Map<String, dynamic> map) {
    return IdcApplicationServiceIntegration(
      lakeFormation: map['lakeFormation'] == null ? null : (IdcApplicationServiceIntegrationLakeFormation.fromMap((map['lakeFormation'] as Map).cast<String, dynamic>())).input(),
      redshift: map['redshift'] == null ? null : (IdcApplicationServiceIntegrationRedshift.fromMap((map['redshift'] as Map).cast<String, dynamic>())).input(),
      s3AccessGrants: map['s3AccessGrants'] == null ? null : (IdcApplicationServiceIntegrationS3AccessGrants.fromMap((map['s3AccessGrants'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

