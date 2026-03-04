// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_destination_media_package_setting.dart';
import 'channel_destination_multiplex_settings.dart';
import 'channel_destination_setting.dart';

class ChannelDestination {
  /// User-specified id. Ths is used in an output group or an output.
  final pulumi.Input<String> id;

  /// Destination settings for a MediaPackage output; one destination for both encoders. See Media Package Settings for more details.
  final pulumi.Input<List<ChannelDestinationMediaPackageSetting>>?
  mediaPackageSettings;

  /// Destination settings for a Multiplex output; one destination for both encoders. See Multiplex Settings for more details.
  final pulumi.Input<ChannelDestinationMultiplexSettings>? multiplexSettings;

  /// Destination settings for a standard output; one destination for each redundant encoder. See Settings for more details.
  final pulumi.Input<List<ChannelDestinationSetting>>? settings;

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
      'mediaPackageSettings':
          ?pulumi.Input.mapOptionalInputValue<
            List<ChannelDestinationMediaPackageSetting>,
            List<Map<String, dynamic>>
          >(
            mediaPackageSettings,
            (value) =>
                pulumi.Input.encodeList<
                  ChannelDestinationMediaPackageSetting,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'multiplexSettings':
          ?pulumi.Input.mapOptionalInputValue<
            ChannelDestinationMultiplexSettings,
            Map<String, dynamic>
          >(multiplexSettings, (value) => value.toMap()),
      'settings':
          ?pulumi.Input.mapOptionalInputValue<
            List<ChannelDestinationSetting>,
            List<Map<String, dynamic>>
          >(
            settings,
            (value) =>
                pulumi.Input.encodeList<
                  ChannelDestinationSetting,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ChannelDestination.fromMap(Map<String, dynamic> map) {
    return ChannelDestination(
      id: pulumi.Input.fromValue(map['id'] as String),
      mediaPackageSettings: (() {
        final guardedValue = map['mediaPackageSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ChannelDestinationMediaPackageSetting>(
            guardedValue,
            (value) => ChannelDestinationMediaPackageSetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      multiplexSettings: (() {
        final guardedValue = map['multiplexSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ChannelDestinationMultiplexSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      settings: (() {
        final guardedValue = map['settings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ChannelDestinationSetting>(
            guardedValue,
            (value) => ChannelDestinationSetting.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
