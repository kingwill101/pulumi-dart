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
  LedgerArgs({
    pulumi.Output<String>? ledgerName,
    pulumi.Output<String>? location,
    pulumi.Output<LedgerProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      ledgerName = pulumi.Input.asOptionalInput<String>(ledgerName),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<LedgerProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      ledgerName: map['ledgerName'] == null ? null : pulumi.Output.create<String>(map['ledgerName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<LedgerProperties>(LedgerProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

