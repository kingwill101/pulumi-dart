// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_default_user_settings_space_storage_settings_default_ebs_storage_settings.dart';

class DomainDefaultUserSettingsSpaceStorageSettings {
  /// The default EBS storage settings for a private space. See `defaultEbsStorageSettings` Block below.
  final pulumi.Input<DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings?>? defaultEbsStorageSettings;

  /// Creates a new [DomainDefaultUserSettingsSpaceStorageSettings].
  /// [defaultEbsStorageSettings] The default EBS storage settings for a private space. See `defaultEbsStorageSettings` Block below.
  const DomainDefaultUserSettingsSpaceStorageSettings({
    this.defaultEbsStorageSettings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultEbsStorageSettings': ?pulumi.Input.mapOptionalInputValue<DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings, Map<String, dynamic>>(defaultEbsStorageSettings, (value) => value.toMap()),
    };
  }

  factory DomainDefaultUserSettingsSpaceStorageSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsSpaceStorageSettings(
      defaultEbsStorageSettings: (() { final guardedValue = map['defaultEbsStorageSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainDefaultUserSettingsSpaceStorageSettingsDefaultEbsStorageSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
