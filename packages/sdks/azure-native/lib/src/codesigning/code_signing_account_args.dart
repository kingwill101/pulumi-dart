// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_sku.dart';

/// {@template pulumi_codesigning_code_signing_account_args_doc}
/// The set of arguments for CodeSigningAccount.
/// {@endtemplate}
/// {@macro pulumi_codesigning_code_signing_account_args_doc}
class CodeSigningAccountArgs {
  /// Artifact Signing account name.
  final pulumi.Input<String?>? accountName;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SKU of the artifact signing account.
  final pulumi.Input<AccountSku?>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [CodeSigningAccountArgs].
  /// [accountName] Artifact Signing account name.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] SKU of the artifact signing account.
  /// [tags] Resource tags.
  const CodeSigningAccountArgs({
    this.accountName,
    this.location,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<AccountSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory CodeSigningAccountArgs.fromMap(Map<String, dynamic> map) {
    return CodeSigningAccountArgs(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
