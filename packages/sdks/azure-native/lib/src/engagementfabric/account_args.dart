// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku.dart';

/// {@template pulumi_engagementfabric_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_engagementfabric_account_args_doc}
class AccountArgs {
  /// Account Name
  final pulumi.Input<String>? accountName;
  /// The location of the resource
  final pulumi.Input<String>? location;
  /// Resource Group Name
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the resource
  final pulumi.Input<SKU> sku;
  /// The tags of the resource
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [accountName] Account Name
  /// [location] The location of the resource
  /// [resourceGroupName] Resource Group Name
  /// [sku] The SKU of the resource
  /// [tags] The tags of the resource
  const AccountArgs({
    this.accountName,
    this.location,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<SKU, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: pulumi.Input.fromValue(SKU.fromMap((map['sku']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
