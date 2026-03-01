// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrolled_intune_app_response.dart';

/// The metadata of Intune enrollment.
class IntuneEnrollmentMetadataResponse {
  /// The enrolled Intune apps.
  final List<EnrolledIntuneAppResponse>? appList;
  /// The id of the Intune enrollment credential.
  final String? credentialId;
  /// The expected duration of Intune applications and policies deployment.
  final int? expectedDeploymentDurationInMinute;

  /// Creates a new [IntuneEnrollmentMetadataResponse].
  /// [appList] The enrolled Intune apps.
  /// [credentialId] The id of the Intune enrollment credential.
  /// [expectedDeploymentDurationInMinute] The expected duration of Intune applications and policies deployment.
  IntuneEnrollmentMetadataResponse({
    this.appList,
    this.credentialId,
    this.expectedDeploymentDurationInMinute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appList': ?appList == null ? null : pulumi.Input.encodeList<EnrolledIntuneAppResponse, Map<String, dynamic>>(appList!, (value) => value.toMap()),
      'credentialId': ?credentialId,
      'expectedDeploymentDurationInMinute': ?expectedDeploymentDurationInMinute,
    };
  }

  factory IntuneEnrollmentMetadataResponse.fromMap(Map<String, dynamic> map) {
    return IntuneEnrollmentMetadataResponse(
      appList: map['appList'] == null ? null : pulumi.Input.decodeList<EnrolledIntuneAppResponse>(map['appList'], (value) => EnrolledIntuneAppResponse.fromMap((value as Map).cast<String, dynamic>())),
      credentialId: map['credentialId'] == null ? null : map['credentialId'] as String,
      expectedDeploymentDurationInMinute: map['expectedDeploymentDurationInMinute'] == null ? null : map['expectedDeploymentDurationInMinute'] as int,
    );
  }
}

