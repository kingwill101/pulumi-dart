// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_rollout_status_manifest_checkin_status_response.dart';
import 'extended_error_info_response.dart';

/// The default rollout status.
class DefaultRolloutPropertiesStatusResponse {
  /// The completed regions.
  final List<String>? completedRegions;
  /// The failed or skipped regions.
  final Map<String, ExtendedErrorInfoResponse>? failedOrSkippedRegions;
  /// The manifest checkin status.
  final DefaultRolloutStatusManifestCheckinStatusResponse? manifestCheckinStatus;
  /// The next traffic region.
  final String? nextTrafficRegion;
  /// The next traffic region scheduled time.
  final String? nextTrafficRegionScheduledTime;
  /// The subscription reregistration result.
  final String? subscriptionReregistrationResult;

  /// Creates a new [DefaultRolloutPropertiesStatusResponse].
  /// [completedRegions] The completed regions.
  /// [failedOrSkippedRegions] The failed or skipped regions.
  /// [manifestCheckinStatus] The manifest checkin status.
  /// [nextTrafficRegion] The next traffic region.
  /// [nextTrafficRegionScheduledTime] The next traffic region scheduled time.
  /// [subscriptionReregistrationResult] The subscription reregistration result.
  DefaultRolloutPropertiesStatusResponse({
    this.completedRegions,
    this.failedOrSkippedRegions,
    this.manifestCheckinStatus,
    this.nextTrafficRegion,
    this.nextTrafficRegionScheduledTime,
    this.subscriptionReregistrationResult,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'completedRegions': ?completedRegions,
      'failedOrSkippedRegions': ?failedOrSkippedRegions == null ? null : pulumi.Input.encodeMapValues<ExtendedErrorInfoResponse, Map<String, dynamic>>(failedOrSkippedRegions!, (value) => value.toMap()),
      'manifestCheckinStatus': ?manifestCheckinStatus == null ? null : manifestCheckinStatus!.toMap(),
      'nextTrafficRegion': ?nextTrafficRegion,
      'nextTrafficRegionScheduledTime': ?nextTrafficRegionScheduledTime,
      'subscriptionReregistrationResult': ?subscriptionReregistrationResult,
    };
  }

  factory DefaultRolloutPropertiesStatusResponse.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutPropertiesStatusResponse(
      completedRegions: map['completedRegions'] == null ? null : (map['completedRegions'] as List).cast<String>(),
      failedOrSkippedRegions: map['failedOrSkippedRegions'] == null ? null : pulumi.Input.decodeMapValues<ExtendedErrorInfoResponse>(map['failedOrSkippedRegions'], (value) => ExtendedErrorInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      manifestCheckinStatus: map['manifestCheckinStatus'] == null ? null : DefaultRolloutStatusManifestCheckinStatusResponse.fromMap((map['manifestCheckinStatus'] as Map).cast<String, dynamic>()),
      nextTrafficRegion: map['nextTrafficRegion'] == null ? null : map['nextTrafficRegion'] as String,
      nextTrafficRegionScheduledTime: map['nextTrafficRegionScheduledTime'] == null ? null : map['nextTrafficRegionScheduledTime'] as String,
      subscriptionReregistrationResult: map['subscriptionReregistrationResult'] == null ? null : map['subscriptionReregistrationResult'] as String,
    );
  }
}

