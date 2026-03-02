// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The build result triggered by a build
class TriggeredBuildResultResponse {
  /// The unique build id of this build result
  final pulumi.Input<String>? id;
  /// The container image of this build result
  final pulumi.Input<String>? image;
  /// The last transition reason of this build result
  final pulumi.Input<String>? lastTransitionReason;
  /// The last transition status of this build result
  final pulumi.Input<String>? lastTransitionStatus;
  /// The last transition time of this build result
  final pulumi.Input<String>? lastTransitionTime;
  /// The provisioning state of this build result
  final pulumi.Input<String> provisioningState;

  /// Creates a new [TriggeredBuildResultResponse].
  /// [id] The unique build id of this build result
  /// [image] The container image of this build result
  /// [lastTransitionReason] The last transition reason of this build result
  /// [lastTransitionStatus] The last transition status of this build result
  /// [lastTransitionTime] The last transition time of this build result
  /// [provisioningState] The provisioning state of this build result
  TriggeredBuildResultResponse({
    this.id,
    this.image,
    this.lastTransitionReason,
    this.lastTransitionStatus,
    this.lastTransitionTime,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'image': ?image,
      'lastTransitionReason': ?lastTransitionReason,
      'lastTransitionStatus': ?lastTransitionStatus,
      'lastTransitionTime': ?lastTransitionTime,
      'provisioningState': provisioningState,
    };
  }

  factory TriggeredBuildResultResponse.fromMap(Map<String, dynamic> map) {
    return TriggeredBuildResultResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      image: map['image'] == null ? null : (map['image'] as String).input(),
      lastTransitionReason: map['lastTransitionReason'] == null ? null : (map['lastTransitionReason'] as String).input(),
      lastTransitionStatus: map['lastTransitionStatus'] == null ? null : (map['lastTransitionStatus'] as String).input(),
      lastTransitionTime: map['lastTransitionTime'] == null ? null : (map['lastTransitionTime'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
    );
  }
}

