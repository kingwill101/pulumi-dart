// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_discovery_table_modified_cadence_frequency.dart';
import 'google_privacy_dlp_v2_discovery_table_modified_cadence_types_item.dart';

/// The cadence at which to update data profiles when a table is modified.
class GooglePrivacyDlpV2DiscoveryTableModifiedCadence {
  /// How frequently data profiles can be updated when tables are modified. Defaults to never.
  final GooglePrivacyDlpV2DiscoveryTableModifiedCadenceFrequency? frequency;

  /// The type of events to consider when deciding if the table has been modified and should have the profile updated. Defaults to MODIFIED_TIMESTAMP.
  final List<GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem>? types;

  /// Creates a new [GooglePrivacyDlpV2DiscoveryTableModifiedCadence].
  /// [frequency] How frequently data profiles can be updated when tables are modified. Defaults to never.
  /// [types] The type of events to consider when deciding if the table has been modified and should have the profile updated. Defaults to MODIFIED_TIMESTAMP.
  GooglePrivacyDlpV2DiscoveryTableModifiedCadence({
    this.frequency,
    this.types,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final frequencyValue = frequency;
    if (frequencyValue != null) {
      map['frequency'] = frequencyValue.value;
    }
    final typesValue = types;
    if (typesValue != null) {
      map['types'] = pulumi.Input.encodeList<
          GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem,
          String>(typesValue, (value) => value.value);
    }
    return map;
  }

  factory GooglePrivacyDlpV2DiscoveryTableModifiedCadence.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoveryTableModifiedCadence(
      frequency: map['frequency'] == null
          ? null
          : GooglePrivacyDlpV2DiscoveryTableModifiedCadenceFrequency.fromValue(
              map['frequency'] as String),
      types: map['types'] == null
          ? null
          : pulumi.Input.decodeList<
                  GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem>(
              map['types'],
              (value) =>
                  GooglePrivacyDlpV2DiscoveryTableModifiedCadenceTypesItem
                      .fromValue(value as String)),
    );
  }
}
