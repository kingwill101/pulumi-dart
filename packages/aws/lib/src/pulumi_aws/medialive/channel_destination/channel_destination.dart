// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../channel_destination_media_package_setting/channel_destination_media_package_setting.dart';
import '../channel_destination_multiplex_settings/channel_destination_multiplex_settings.dart';
import '../channel_destination_setting/channel_destination_setting.dart';

class ChannelDestination {
  /// User-specified id. Ths is used in an output group or an output.
  final String id;

  /// Destination settings for a MediaPackage output; one destination for both encoders. See Media Package Settings for more details.
  final List<ChannelDestinationMediaPackageSetting>? mediaPackageSettings;

  /// Destination settings for a Multiplex output; one destination for both encoders. See Multiplex Settings for more details.
  final ChannelDestinationMultiplexSettings? multiplexSettings;

  /// Destination settings for a standard output; one destination for each redundant encoder. See Settings for more details.
  final List<ChannelDestinationSetting>? settings;

  ChannelDestination({
    required this.id,
    this.mediaPackageSettings,
    this.multiplexSettings,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final mediaPackageSettingsValue = mediaPackageSettings;
    if (mediaPackageSettingsValue != null) {
      map['mediaPackageSettings'] = Input.encodeList<
              ChannelDestinationMediaPackageSetting, Map<String, dynamic>>(
          mediaPackageSettingsValue, (value) => value.toMap());
    }
    final multiplexSettingsValue = multiplexSettings;
    if (multiplexSettingsValue != null) {
      map['multiplexSettings'] = multiplexSettingsValue.toMap();
    }
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] =
          Input.encodeList<ChannelDestinationSetting, Map<String, dynamic>>(
              settingsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ChannelDestination.fromMap(Map<String, dynamic> map) {
    return ChannelDestination(
      id: map['id'] as String,
      mediaPackageSettings: map['mediaPackageSettings'] == null
          ? null
          : Input.decodeList<ChannelDestinationMediaPackageSetting>(
              map['mediaPackageSettings'],
              (value) => ChannelDestinationMediaPackageSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
      multiplexSettings: map['multiplexSettings'] == null
          ? null
          : ChannelDestinationMultiplexSettings.fromMap(
              (map['multiplexSettings'] as Map).cast<String, dynamic>()),
      settings: map['settings'] == null
          ? null
          : Input.decodeList<ChannelDestinationSetting>(
              map['settings'],
              (value) => ChannelDestinationSetting.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
