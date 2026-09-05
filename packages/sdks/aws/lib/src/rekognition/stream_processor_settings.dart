// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_processor_settings_connected_home.dart';
import 'stream_processor_settings_face_search.dart';

class StreamProcessorSettings {
  /// Label detection settings to use on a streaming video. See `connectedHome`.
  final pulumi.Input<StreamProcessorSettingsConnectedHome?>? connectedHome;
  /// Input face recognition parameters for an Amazon Rekognition stream processor. See `faceSearch`.
  final pulumi.Input<StreamProcessorSettingsFaceSearch?>? faceSearch;

  /// Creates a new [StreamProcessorSettings].
  /// [connectedHome] Label detection settings to use on a streaming video. See `connectedHome`.
  /// [faceSearch] Input face recognition parameters for an Amazon Rekognition stream processor. See `faceSearch`.
  const StreamProcessorSettings({
    this.connectedHome,
    this.faceSearch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedHome': ?pulumi.Input.mapOptionalInputValue<StreamProcessorSettingsConnectedHome, Map<String, dynamic>>(connectedHome, (value) => value.toMap()),
      'faceSearch': ?pulumi.Input.mapOptionalInputValue<StreamProcessorSettingsFaceSearch, Map<String, dynamic>>(faceSearch, (value) => value.toMap()),
    };
  }

  factory StreamProcessorSettings.fromMap(Map<String, dynamic> map) {
    return StreamProcessorSettings(
      connectedHome: (() { final guardedValue = map['connectedHome']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamProcessorSettingsConnectedHome.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      faceSearch: (() { final guardedValue = map['faceSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamProcessorSettingsFaceSearch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
