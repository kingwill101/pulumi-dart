// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_discovery_schema_modified_cadence_frequency.dart';
import 'google_privacy_dlp_v2_discovery_schema_modified_cadence_types_item.dart';

/// The cadence at which to update data profiles when a schema is modified.
class GooglePrivacyDlpV2DiscoverySchemaModifiedCadence {
  /// How frequently profiles may be updated when schemas are modified. Defaults to monthly.
  final GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceFrequency? frequency;

  /// The type of events to consider when deciding if the table's schema has been modified and should have the profile updated. Defaults to NEW_COLUMNS.
  final List<GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem>? types;

  /// Creates a new [GooglePrivacyDlpV2DiscoverySchemaModifiedCadence].
  /// [frequency] How frequently profiles may be updated when schemas are modified. Defaults to monthly.
  /// [types] The type of events to consider when deciding if the table's schema has been modified and should have the profile updated. Defaults to NEW_COLUMNS.
  GooglePrivacyDlpV2DiscoverySchemaModifiedCadence({
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
          GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem,
          String>(typesValue, (value) => value.value);
    }
    return map;
  }

  factory GooglePrivacyDlpV2DiscoverySchemaModifiedCadence.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2DiscoverySchemaModifiedCadence(
      frequency: map['frequency'] == null
          ? null
          : GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceFrequency.fromValue(
              map['frequency'] as String),
      types: map['types'] == null
          ? null
          : pulumi.Input.decodeList<
                  GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem>(
              map['types'],
              (value) =>
                  GooglePrivacyDlpV2DiscoverySchemaModifiedCadenceTypesItem
                      .fromValue(value as String)),
    );
  }
}
