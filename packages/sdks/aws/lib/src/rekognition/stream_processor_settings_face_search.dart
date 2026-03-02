// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamProcessorSettingsFaceSearch {
  /// ID of a collection that contains faces that you want to search for.
  final pulumi.Input<String> collectionId;
  /// Minimum face match confidence score that must be met to return a result for a recognized face.
  final pulumi.Input<double>? faceMatchThreshold;

  /// Creates a new [StreamProcessorSettingsFaceSearch].
  /// [collectionId] ID of a collection that contains faces that you want to search for.
  /// [faceMatchThreshold] Minimum face match confidence score that must be met to return a result for a recognized face.
  StreamProcessorSettingsFaceSearch({
    required this.collectionId,
    this.faceMatchThreshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collectionId': collectionId,
      'faceMatchThreshold': ?faceMatchThreshold,
    };
  }

  factory StreamProcessorSettingsFaceSearch.fromMap(Map<String, dynamic> map) {
    return StreamProcessorSettingsFaceSearch(
      collectionId: (map['collectionId'] as String).input(),
      faceMatchThreshold: map['faceMatchThreshold'] == null ? null : (map['faceMatchThreshold'] as double).input(),
    );
  }
}

