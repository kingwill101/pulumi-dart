// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'destination.dart';

/// Definition of InventoryConfiguration
class InventoryConfiguration {
  /// Contains information about where to publish the inventory results. Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket.
  final pulumi.Input<Destination>? destination;
  /// Specifies whether the inventory is enabled or disabled. If set to ``True``, an inventory list is generated. If set to ``False``, no inventory list is generated.
  final pulumi.Input<bool>? enabled;
  /// The ID used to identify the inventory configuration.
  final pulumi.Input<String>? id;
  /// Object versions to include in the inventory list. If set to ``All``, the list includes all the object versions, which adds the version-related fields ``VersionId``, ``IsLatest``, and ``DeleteMarker`` to the list. If set to ``Current``, the list does not contain these version-related fields.
  final pulumi.Input<String>? includedObjectVersions;
  /// Contains the optional fields that are included in the inventory results.
  final pulumi.Input<List<String>>? optionalFields;
  /// Specifies the inventory filter prefix.
  final pulumi.Input<String>? prefix;
  /// Specifies the schedule for generating inventory results.
  final pulumi.Input<String>? scheduleFrequency;

  /// Creates a new [InventoryConfiguration].
  /// [destination] Contains information about where to publish the inventory results. Specifies information about where to publish analysis or configuration results for an Amazon S3 bucket.
  /// [enabled] Specifies whether the inventory is enabled or disabled. If set to ``True``, an inventory list is generated. If set to ``False``, no inventory list is generated.
  /// [id] The ID used to identify the inventory configuration.
  /// [includedObjectVersions] Object versions to include in the inventory list. If set to ``All``, the list includes all the object versions, which adds the version-related fields ``VersionId``, ``IsLatest``, and ``DeleteMarker`` to the list. If set to ``Current``, the list does not contain these version-related fields.
  /// [optionalFields] Contains the optional fields that are included in the inventory results.
  /// [prefix] Specifies the inventory filter prefix.
  /// [scheduleFrequency] Specifies the schedule for generating inventory results.
  const InventoryConfiguration({
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
      'destination': ?pulumi.Input.mapOptionalInputValue<Destination, Map<String, dynamic>>(destination, (value) => value.toMap()),
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
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Destination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      includedObjectVersions: (() { final guardedValue = map['includedObjectVersions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalFields: (() { final guardedValue = map['optionalFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduleFrequency: (() { final guardedValue = map['scheduleFrequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

