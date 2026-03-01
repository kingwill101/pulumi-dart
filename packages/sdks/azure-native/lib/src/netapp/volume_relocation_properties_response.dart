// ignore_for_file: unused_element, unnecessary_cast


/// Volume relocation properties
class VolumeRelocationPropertiesResponse {
  /// Has relocation finished and is ready to be cleaned up
  final bool readyToBeFinalized;
  /// Has relocation been requested for this volume
  final bool? relocationRequested;

  /// Creates a new [VolumeRelocationPropertiesResponse].
  /// [readyToBeFinalized] Has relocation finished and is ready to be cleaned up
  /// [relocationRequested] Has relocation been requested for this volume
  VolumeRelocationPropertiesResponse({
    required this.readyToBeFinalized,
    this.relocationRequested,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'readyToBeFinalized': readyToBeFinalized,
      'relocationRequested': ?relocationRequested,
    };
  }

  factory VolumeRelocationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VolumeRelocationPropertiesResponse(
      readyToBeFinalized: map['readyToBeFinalized'] as bool,
      relocationRequested: map['relocationRequested'] == null ? null : map['relocationRequested'] as bool,
    );
  }
}

