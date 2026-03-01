// ignore_for_file: unused_element, unnecessary_cast

import 'destination.dart';

/// Definition of InventoryConfiguration
class InventoryConfiguration {
  /// Contains information about where to publish the inventory results. Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket.
  final Destination? destination;
  /// Specifies whether the inventory is enabled or disabled. If set to ``True``, an inventory list is generated. If set to ``False``, no inventory list is generated.
  final bool? enabled;
  /// The ID used to identify the inventory configuration.
  final String? id;
  /// Object versions to include in the inventory list. If set to ``All``, the list includes all the object versions, which adds the version-related fields ``VersionId``, ``IsLatest``, and ``DeleteMarker`` to the list. If set to ``Current``, the list does not contain these version-related fields.
  final String? includedObjectVersions;
  /// Contains the optional fields that are included in the inventory results.
  final List<String>? optionalFields;
  /// Specifies the inventory filter prefix.
  final String? prefix;
  /// Specifies the schedule for generating inventory results.
  final String? scheduleFrequency;

  /// Creates a new [InventoryConfiguration].
  /// [destination] Contains information about where to publish the inventory results. Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket.
  /// [enabled] Specifies whether the inventory is enabled or disabled. If set to ``True``, an inventory list is generated. If set to ``False``, no inventory list is generated.
  /// [id] The ID used to identify the inventory configuration.
  /// [includedObjectVersions] Object versions to include in the inventory list. If set to ``All``, the list includes all the object versions, which adds the version-related fields ``VersionId``, ``IsLatest``, and ``DeleteMarker`` to the list. If set to ``Current``, the list does not contain these version-related fields.
  /// [optionalFields] Contains the optional fields that are included in the inventory results.
  /// [prefix] Specifies the inventory filter prefix.
  /// [scheduleFrequency] Specifies the schedule for generating inventory results.
  InventoryConfiguration({
    this.destination,
    this.enabled,
    this.id,
    this.includedObjectVersions,
    this.optionalFields,
    this.prefix,
    this.scheduleFrequency,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination == null ? null : destination!.toMap(),
      'enabled': ?enabled,
      'id': ?id,
      'includedObjectVersions': ?includedObjectVersions,
      'optionalFields': ?optionalFields,
      'prefix': ?prefix,
      'scheduleFrequency': ?scheduleFrequency,
    };
  }

  factory InventoryConfiguration.fromMap(Map<String, dynamic> map) {
    return InventoryConfiguration(
      destination: map['destination'] == null ? null : Destination.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      id: map['id'] == null ? null : map['id'] as String,
      includedObjectVersions: map['includedObjectVersions'] == null ? null : map['includedObjectVersions'] as String,
      optionalFields: map['optionalFields'] == null ? null : (map['optionalFields'] as List).cast<String>(),
      prefix: map['prefix'] == null ? null : map['prefix'] as String,
      scheduleFrequency: map['scheduleFrequency'] == null ? null : map['scheduleFrequency'] as String,
    );
  }
}

