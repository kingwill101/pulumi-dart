// ignore_for_file: unused_element, unnecessary_cast

import 'gcp_organizational_data_member_response.dart';
import 'gcp_project_details_response.dart';

/// The GCP project connector environment data
class GcpProjectEnvironmentDataResponse {
  /// The type of the environment data.
  /// Expected value is 'GcpProject'.
  final String environmentType;
  /// The Gcp project's organizational data
  final GcpOrganizationalDataMemberResponse? organizationalData;
  /// The Gcp project's details
  final GcpProjectDetailsResponse? projectDetails;
  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final double? scanInterval;

  /// Creates a new [GcpProjectEnvironmentDataResponse].
  /// [environmentType] The type of the environment data.
  /// [organizationalData] The Gcp project's organizational data
  /// [projectDetails] The Gcp project's details
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  GcpProjectEnvironmentDataResponse({
    required this.environmentType,
    this.organizationalData,
    this.projectDetails,
    this.scanInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
      'organizationalData': ?organizationalData == null ? null : organizationalData!.toMap(),
      'projectDetails': ?projectDetails == null ? null : projectDetails!.toMap(),
      'scanInterval': ?scanInterval,
    };
  }

  factory GcpProjectEnvironmentDataResponse.fromMap(Map<String, dynamic> map) {
    return GcpProjectEnvironmentDataResponse(
      environmentType: map['environmentType'] as String,
      organizationalData: map['organizationalData'] == null ? null : GcpOrganizationalDataMemberResponse.fromMap((map['organizationalData'] as Map).cast<String, dynamic>()),
      projectDetails: map['projectDetails'] == null ? null : GcpProjectDetailsResponse.fromMap((map['projectDetails'] as Map).cast<String, dynamic>()),
      scanInterval: map['scanInterval'] == null ? null : map['scanInterval'] as double,
    );
  }
}

