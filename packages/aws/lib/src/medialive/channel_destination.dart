// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_destination_media_package_setting.dart';
import 'channel_destination_multiplex_settings.dart';
import 'channel_destination_setting.dart';

class ChannelDestination {
  /// User-specified id. Ths is used in an output group or an output.
  final String id;

  /// Destination settings for a MediaPackage output; one destination for both encoders. See Media Package Settings for more details.
  final List<ChannelDestinationMediaPackageSetting>? mediaPackageSettings;

  /// Destination settings for a Multiplex output; one destination for both encoders. See Multiplex Settings for more details.
  final ChannelDestinationMultiplexSettings? multiplexSettings;

  /// Destination settings for a standard output; one destination for each redundant encoder. See Settings for more details.
  final List<ChannelDestinationSetting>? settings;

  /// Creates a new [ChannelDestination].
  /// [id] User-specified id. Ths is used in an output group or an output.
  /// [mediaPackageSettings] Destination settings for a MediaPackage output; one destination for both encoders. See Media Package Settings for more details.
  /// [multiplexSettings] Destination settings for a Multiplex output; one destination for both encoders. See Multiplex Settings for more details.
  /// [settings] Destination settings for a standard output; one destination for each redundant encoder. See Settings for more details.
  ChannelDestination({
    required this.id,
    this.mediaPackageSettings,
    this.multiplexSettings,
    this.settings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'mediaPackageSettings': ?mediaPackageSettings == null
          ? null
          : pulumi.Input.encodeList<
              ChannelDestinationMediaPackageSetting,
              Map<String, dynamic>
            >(mediaPackageSettings!, (value) => value.toMap()),
      'multiplexSettings': ?multiplexSettings == null
          ? null
          : multiplexSettings!.toMap(),
      'settings': ?settings == null
          ? null
          : pulumi.Input.encodeList<
              ChannelDestinationSetting,
              Map<String, dynamic>
            >(settings!, (value) => value.toMap()),
    };
  }

  factory ChannelDestination.fromMap(Map<String, dynamic> map) {
    return ChannelDestination(
      id: map['id'] as String,
      mediaPackageSettings: map['mediaPackageSettings'] == null
          ? null
          : pulumi.Input.decodeList<ChannelDestinationMediaPackageSetting>(
              map['mediaPackageSettings'],
              (value) => ChannelDestinationMediaPackageSetting.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      multiplexSettings: map['multiplexSettings'] == null
          ? null
          : ChannelDestinationMultiplexSettings.fromMap(
              (map['multiplexSettings'] as Map).cast<String, dynamic>(),
            ),
      settings: map['settings'] == null
          ? null
          : pulumi.Input.decodeList<ChannelDestinationSetting>(
              map['settings'],
              (value) => ChannelDestinationSetting.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
