// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_sku.dart';

/// {@template pulumi_codesigning_code_signing_account_args_doc}
/// The set of arguments for CodeSigningAccount.
/// {@endtemplate}
/// {@macro pulumi_codesigning_code_signing_account_args_doc}
class CodeSigningAccountArgs {
  /// Trusted Signing account name.
  final pulumi.Input<String>? accountName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// SKU of the trusted signing account.
  final pulumi.Input<AccountSku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CodeSigningAccountArgs].
  /// [accountName] Trusted Signing account name.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] SKU of the trusted signing account.
  /// [tags] Resource tags.
  CodeSigningAccountArgs({
    pulumi.Output<String>? accountName,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<AccountSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<AccountSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<AccountSku>(AccountSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

