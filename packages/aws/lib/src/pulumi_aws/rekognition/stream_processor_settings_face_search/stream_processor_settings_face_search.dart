// ignore_for_file: unused_element, unnecessary_cast

class StreamProcessorSettingsFaceSearch {
  /// ID of a collection that contains faces that you want to search for.
  final String collectionId;

  /// Minimum face match confidence score that must be met to return a result for a recognized face.
  final double? faceMatchThreshold;

  StreamProcessorSettingsFaceSearch({
    required this.collectionId,
    this.faceMatchThreshold,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionId'] = collectionId;
    final faceMatchThresholdValue = faceMatchThreshold;
    if (faceMatchThresholdValue != null) {
      map['faceMatchThreshold'] = faceMatchThresholdValue;
    }
    return map;
  }

  factory StreamProcessorSettingsFaceSearch.fromMap(Map<String, dynamic> map) {
    return StreamProcessorSettingsFaceSearch(
      collectionId: map['collectionId'] as String,
      faceMatchThreshold: map['faceMatchThreshold'] == null
          ? null
          : map['faceMatchThreshold'] as double,
    );
  }
}
