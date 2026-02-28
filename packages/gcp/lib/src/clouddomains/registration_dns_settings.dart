// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registration_dns_settings_custom_dns.dart';
import 'registration_dns_settings_glue_record.dart';

class RegistrationDnsSettings {
  /// Configuration for an arbitrary DNS provider.
  /// Structure is documented below.
  final RegistrationDnsSettingsCustomDns? customDns;

  /// The list of glue records for this Registration. Commonly empty.
  /// Structure is documented below.
  final List<RegistrationDnsSettingsGlueRecord>? glueRecords;

  /// Creates a new [RegistrationDnsSettings].
  /// [customDns] Configuration for an arbitrary DNS provider.
  /// [glueRecords] The list of glue records for this Registration. Commonly empty.
  RegistrationDnsSettings({
    this.customDns,
    this.glueRecords,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customDnsValue = customDns;
    if (customDnsValue != null) {
      map['customDns'] = customDnsValue.toMap();
    }
    final glueRecordsValue = glueRecords;
    if (glueRecordsValue != null) {
      map['glueRecords'] = pulumi.Input.encodeList<
          RegistrationDnsSettingsGlueRecord,
          Map<String, dynamic>>(glueRecordsValue, (value) => value.toMap());
    }
    return map;
  }

  factory RegistrationDnsSettings.fromMap(Map<String, dynamic> map) {
    return RegistrationDnsSettings(
      customDns: map['customDns'] == null
          ? null
          : RegistrationDnsSettingsCustomDns.fromMap(
              (map['customDns'] as Map).cast<String, dynamic>()),
      glueRecords: map['glueRecords'] == null
          ? null
          : pulumi.Input.decodeList<RegistrationDnsSettingsGlueRecord>(
              map['glueRecords'],
              (value) => RegistrationDnsSettingsGlueRecord.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
