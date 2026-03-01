// ignore_for_file: unused_element, unnecessary_cast

import 'gcp_organizational_data_member.dart';
import 'gcp_project_details.dart';

/// The GCP project connector environment data
class GcpProjectEnvironmentData {
  /// The type of the environment data.
  /// Expected value is 'GcpProject'.
  final String environmentType;
  /// The Gcp project's organizational data
  final GcpOrganizationalDataMember? organizationalData;
  /// The Gcp project's details
  final GcpProjectDetails? projectDetails;
  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final double? scanInterval;

  /// Creates a new [GcpProjectEnvironmentData].
  /// [environmentType] The type of the environment data.
  /// [organizationalData] The Gcp project's organizational data
  /// [projectDetails] The Gcp project's details
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  GcpProjectEnvironmentData({
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

  factory GcpProjectEnvironmentData.fromMap(Map<String, dynamic> map) {
    return GcpProjectEnvironmentData(
      environmentType: map['environmentType'] as String,
      organizationalData: map['organizationalData'] == null ? null : GcpOrganizationalDataMember.fromMap((map['organizationalData'] as Map).cast<String, dynamic>()),
      projectDetails: map['projectDetails'] == null ? null : GcpProjectDetails.fromMap((map['projectDetails'] as Map).cast<String, dynamic>()),
      scanInterval: map['scanInterval'] == null ? null : map['scanInterval'] as double,
    );
  }
}

