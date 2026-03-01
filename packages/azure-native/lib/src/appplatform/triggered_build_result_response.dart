// ignore_for_file: unused_element, unnecessary_cast


/// The build result triggered by a build
class TriggeredBuildResultResponse {
  /// The unique build id of this build result
  final String? id;
  /// The container image of this build result
  final String? image;
  /// The last transition reason of this build result
  final String? lastTransitionReason;
  /// The last transition status of this build result
  final String? lastTransitionStatus;
  /// The last transition time of this build result
  final String? lastTransitionTime;
  /// The provisioning state of this build result
  final String provisioningState;

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
      id: map['id'] == null ? null : map['id'] as String,
      image: map['image'] == null ? null : map['image'] as String,
      lastTransitionReason: map['lastTransitionReason'] == null ? null : map['lastTransitionReason'] as String,
      lastTransitionStatus: map['lastTransitionStatus'] == null ? null : map['lastTransitionStatus'] as String,
      lastTransitionTime: map['lastTransitionTime'] == null ? null : map['lastTransitionTime'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

