// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pinpoint_smsvoicev2_protect_configuration_smsvoicev2_protect_configuration_args_doc}
/// The set of arguments for Smsvoicev2ProtectConfiguration.
/// {@endtemplate}
/// {@macro pulumi_pinpoint_smsvoicev2_protect_configuration_smsvoicev2_protect_configuration_args_doc}
class Smsvoicev2ProtectConfigurationArgs {
  /// Whether deletion protection is enabled. When `true`, the protect configuration can't be deleted.
  final pulumi.Input<bool?>? deletionProtectionEnabled;
  /// Map of two-character ISO 3166-1 alpha-2 country codes to protect status for MMS messages. Valid value is `BLOCK`.
  final pulumi.Input<Map<String, String>?>? mmsCountryRules;
  /// Map of two-character ISO 3166-1 alpha-2 country codes to protect status for RCS messages. Valid value is `BLOCK`.
  final pulumi.Input<Map<String, String>?>? rcsCountryRules;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of two-character ISO 3166-1 alpha-2 country codes to protect status for SMS messages. Valid values are `BLOCK`, `FILTER`, and `MONITOR`.
  final pulumi.Input<Map<String, String>?>? smsCountryRules;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of two-character ISO 3166-1 alpha-2 country codes to protect status for voice messages. Valid value is `BLOCK`.
  ///
  /// &gt; **Note:** AWS allows messages to every country by default. Each `*_country_rules` map lists only the countries that differ from that default, so `ALLOW` is not a valid value. Removing a country from a map resets it to `ALLOW`. Removing a map resets every country for that message type to `ALLOW`.
  ///
  /// &gt; **Note:** The countries each message type supports differ and are validated by AWS. See [Supported countries and regions](https://docs.aws.amazon.com/sms-voice/latest/userguide/phone-numbers-sms-by-country.html) in the AWS End User Messaging SMS User Guide. `FILTER` and `MONITOR` incur additional charges for AIT risk evaluation. See [Country rule modes](https://docs.aws.amazon.com/sms-voice/latest/userguide/filter-and-monitor-messages.html) for details.
  final pulumi.Input<Map<String, String>?>? voiceCountryRules;

  /// Creates a new [Smsvoicev2ProtectConfigurationArgs].
  /// [deletionProtectionEnabled] Whether deletion protection is enabled. When `true`, the protect configuration can't be deleted.
  /// [mmsCountryRules] Map of two-character ISO 3166-1 alpha-2 country codes to protect status for MMS messages. Valid value is `BLOCK`.
  /// [rcsCountryRules] Map of two-character ISO 3166-1 alpha-2 country codes to protect status for RCS messages. Valid value is `BLOCK`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [smsCountryRules] Map of two-character ISO 3166-1 alpha-2 country codes to protect status for SMS messages. Valid values are `BLOCK`, `FILTER`, and `MONITOR`.
  /// [tags] Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [voiceCountryRules] Map of two-character ISO 3166-1 alpha-2 country codes to protect status for voice messages. Valid value is `BLOCK`.
  const Smsvoicev2ProtectConfigurationArgs({
    this.deletionProtectionEnabled,
    this.mmsCountryRules,
    this.rcsCountryRules,
    this.region,
    this.smsCountryRules,
    this.tags,
    this.voiceCountryRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionProtectionEnabled': ?deletionProtectionEnabled,
      'mmsCountryRules': ?mmsCountryRules,
      'rcsCountryRules': ?rcsCountryRules,
      'region': ?region,
      'smsCountryRules': ?smsCountryRules,
      'tags': ?tags,
      'voiceCountryRules': ?voiceCountryRules,
    };
  }

  factory Smsvoicev2ProtectConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return Smsvoicev2ProtectConfigurationArgs(
      deletionProtectionEnabled: (() { final guardedValue = map['deletionProtectionEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mmsCountryRules: (() { final guardedValue = map['mmsCountryRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      rcsCountryRules: (() { final guardedValue = map['rcsCountryRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      smsCountryRules: (() { final guardedValue = map['smsCountryRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      voiceCountryRules: (() { final guardedValue = map['voiceCountryRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
