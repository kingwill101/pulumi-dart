// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ledger_properties.dart';

/// {@template pulumi_confidentialledger_ledger_args_doc}
/// The set of arguments for Ledger.
/// {@endtemplate}
/// {@macro pulumi_confidentialledger_ledger_args_doc}
class LedgerArgs {
  /// Name of the Confidential Ledger
  final pulumi.Input<String>? ledgerName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Properties of Confidential Ledger Resource.
  final pulumi.Input<LedgerProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LedgerArgs].
  /// [ledgerName] Name of the Confidential Ledger
  /// [location] The geo-location where the resource lives
  /// [properties] Properties of Confidential Ledger Resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const LedgerArgs({
    this.ledgerName,
    this.location,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ledgerName': ?ledgerName,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<LedgerProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LedgerArgs.fromMap(Map<String, dynamic> map) {
    return LedgerArgs(
      ledgerName: (() { final guardedValue = map['ledgerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LedgerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
