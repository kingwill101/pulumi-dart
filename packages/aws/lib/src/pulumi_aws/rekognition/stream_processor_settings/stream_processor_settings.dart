// ignore_for_file: unused_element, unnecessary_cast

import '../stream_processor_settings_connected_home/stream_processor_settings_connected_home.dart';
import '../stream_processor_settings_face_search/stream_processor_settings_face_search.dart';

class StreamProcessorSettings {
  /// Label detection settings to use on a streaming video. See `connected_home`.
  final StreamProcessorSettingsConnectedHome? connectedHome;

  /// Input face recognition parameters for an Amazon Rekognition stream processor. See `face_search`.
  final StreamProcessorSettingsFaceSearch? faceSearch;

  StreamProcessorSettings({
    this.connectedHome,
    this.faceSearch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectedHomeValue = connectedHome;
    if (connectedHomeValue != null) {
      map['connectedHome'] = connectedHomeValue.toMap();
    }
    final faceSearchValue = faceSearch;
    if (faceSearchValue != null) {
      map['faceSearch'] = faceSearchValue.toMap();
    }
    return map;
  }

  factory StreamProcessorSettings.fromMap(Map<String, dynamic> map) {
    return StreamProcessorSettings(
      connectedHome: map['connectedHome'] == null
          ? null
          : StreamProcessorSettingsConnectedHome.fromMap(
              (map['connectedHome'] as Map).cast<String, dynamic>()),
      faceSearch: map['faceSearch'] == null
          ? null
          : StreamProcessorSettingsFaceSearch.fromMap(
              (map['faceSearch'] as Map).cast<String, dynamic>()),
    );
  }
}
