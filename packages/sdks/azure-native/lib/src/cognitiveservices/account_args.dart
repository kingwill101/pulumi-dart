// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_properties.dart';
import 'identity.dart';
import 'sku.dart';

/// {@template pulumi_cognitiveservices_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_cognitiveservices_account_args_doc}
class AccountArgs {
  /// The name of Cognitive Services account.
  final pulumi.Input<String>? accountName;
  /// Identity for the resource.
  final pulumi.Input<Identity>? identity;
  /// The Kind of the resource.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Properties of Cognitive Services account.
  final pulumi.Input<AccountProperties>? properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource model definition representing SKU
  final pulumi.Input<Sku>? sku;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [accountName] The name of Cognitive Services account.
  /// [identity] Identity for the resource.
  /// [kind] The Kind of the resource.
  /// [location] The geo-location where the resource lives
  /// [properties] Properties of Cognitive Services account.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The resource model definition representing SKU
  /// [tags] Resource tags.
  AccountArgs({
    pulumi.Output<String>? accountName,
    pulumi.Output<Identity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<AccountProperties>? properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Sku>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      properties = pulumi.Input.asOptionalInput<AccountProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'properties': ?pulumi.Input.mapOptionalInputValue<AccountProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<AccountProperties>(AccountProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<Sku>(Sku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

