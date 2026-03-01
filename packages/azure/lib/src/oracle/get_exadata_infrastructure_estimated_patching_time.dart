// ignore_for_file: unused_element, unnecessary_cast


class GetExadataInfrastructureEstimatedPatchingTime {
  /// The estimated time required in minutes for database server patching.
  final int estimatedDbServerPatchingTime;
  /// The estimated time required in minutes for network switch patching.
  final int estimatedNetworkSwitchesPatchingTime;
  /// The estimated time required in minutes for storage server patching.
  final int estimatedStorageServerPatchingTime;
  /// The estimated total time required in minutes for all patching operations.
  final int totalEstimatedPatchingTime;

  /// Creates a new [GetExadataInfrastructureEstimatedPatchingTime].
  /// [estimatedDbServerPatchingTime] The estimated time required in minutes for database server patching.
  /// [estimatedNetworkSwitchesPatchingTime] The estimated time required in minutes for network switch patching.
  /// [estimatedStorageServerPatchingTime] The estimated time required in minutes for storage server patching.
  /// [totalEstimatedPatchingTime] The estimated total time required in minutes for all patching operations.
  GetExadataInfrastructureEstimatedPatchingTime({
    required this.estimatedDbServerPatchingTime,
    required this.estimatedNetworkSwitchesPatchingTime,
    required this.estimatedStorageServerPatchingTime,
    required this.totalEstimatedPatchingTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedDbServerPatchingTime': estimatedDbServerPatchingTime,
      'estimatedNetworkSwitchesPatchingTime': estimatedNetworkSwitchesPatchingTime,
      'estimatedStorageServerPatchingTime': estimatedStorageServerPatchingTime,
      'totalEstimatedPatchingTime': totalEstimatedPatchingTime,
    };
  }

  factory GetExadataInfrastructureEstimatedPatchingTime.fromMap(Map<String, dynamic> map) {
    return GetExadataInfrastructureEstimatedPatchingTime(
      estimatedDbServerPatchingTime: map['estimatedDbServerPatchingTime'] as int,
      estimatedNetworkSwitchesPatchingTime: map['estimatedNetworkSwitchesPatchingTime'] as int,
      estimatedStorageServerPatchingTime: map['estimatedStorageServerPatchingTime'] as int,
      totalEstimatedPatchingTime: map['totalEstimatedPatchingTime'] as int,
    );
  }
}

