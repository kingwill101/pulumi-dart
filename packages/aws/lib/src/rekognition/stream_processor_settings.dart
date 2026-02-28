// ignore_for_file: unused_element, unnecessary_cast

import 'stream_processor_settings_connected_home.dart';
import 'stream_processor_settings_face_search.dart';

class StreamProcessorSettings {
  /// Label detection settings to use on a streaming video. See `connected_home`.
  final StreamProcessorSettingsConnectedHome? connectedHome;
  /// Input face recognition parameters for an Amazon Rekognition stream processor. See `face_search`.
  final StreamProcessorSettingsFaceSearch? faceSearch;

  /// Creates a new [StreamProcessorSettings].
  /// [connectedHome] Label detection settings to use on a streaming video. See `connected_home`.
  /// [faceSearch] Input face recognition parameters for an Amazon Rekognition stream processor. See `face_search`.
  StreamProcessorSettings({
    this.connectedHome,
    this.faceSearch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedHome': ?connectedHome == null ? null : connectedHome!.toMap(),
      'faceSearch': ?faceSearch == null ? null : faceSearch!.toMap(),
    };
  }

  factory StreamProcessorSettings.fromMap(Map<String, dynamic> map) {
    return StreamProcessorSettings(
      connectedHome: map['connectedHome'] == null ? null : StreamProcessorSettingsConnectedHome.fromMap((map['connectedHome'] as Map).cast<String, dynamic>()),
      faceSearch: map['faceSearch'] == null ? null : StreamProcessorSettingsFaceSearch.fromMap((map['faceSearch'] as Map).cast<String, dynamic>()),
    );
  }
}

