// ignore_for_file: unused_element, unnecessary_cast

class StreamProcessorDataSharingPreference {
  /// Whether you are sharing data with Rekognition to improve model performance.
  final bool optIn;

  /// Creates a new [StreamProcessorDataSharingPreference].
  /// [optIn] Whether you are sharing data with Rekognition to improve model performance.
  StreamProcessorDataSharingPreference({required this.optIn});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'optIn': optIn};
  }

  factory StreamProcessorDataSharingPreference.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamProcessorDataSharingPreference(optIn: map['optIn'] as bool);
  }
}
