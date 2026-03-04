// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_space_settings_space_storage_settings_default_ebs_storage_settings.dart';

class DomainDefaultSpaceSettingsSpaceStorageSettings {
  /// The default EBS storage settings for a private space. See `default_ebs_storage_settings` Block below.
  final pulumi.Input<
    DomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings
  >?
  defaultEbsStorageSettings;

  /// Creates a new [DomainDefaultSpaceSettingsSpaceStorageSettings].
  /// [defaultEbsStorageSettings] The default EBS storage settings for a private space. See `default_ebs_storage_settings` Block below.
  DomainDefaultSpaceSettingsSpaceStorageSettings({
    this.defaultEbsStorageSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultEbsStorageSettings':
          ?pulumi.Input.mapOptionalInputValue<
            DomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings,
            Map<String, dynamic>
          >(defaultEbsStorageSettings, (value) => value.toMap()),
    };
  }

  factory DomainDefaultSpaceSettingsSpaceStorageSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultSpaceSettingsSpaceStorageSettings(
      defaultEbsStorageSettings: (() {
        final guardedValue = map['defaultEbsStorageSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DomainDefaultSpaceSettingsSpaceStorageSettingsDefaultEbsStorageSettings.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
