// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity.dart';

/// {@template pulumi_datashare_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_datashare_account_args_doc}
class AccountArgs {
  /// The name of the share account.
  final pulumi.Input<String>? accountName;
  /// Identity Info on the Account
  final pulumi.Input<Identity> identity;
  /// Location of the azure resource.
  final pulumi.Input<String>? location;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Tags on the azure resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [accountName] The name of the share account.
  /// [identity] Identity Info on the Account
  /// [location] Location of the azure resource.
  /// [resourceGroupName] The resource group name.
  /// [tags] Tags on the azure resource.
  AccountArgs({
    pulumi.Output<String>? accountName,
    required pulumi.Output<Identity> identity,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      accountName = pulumi.Input.asOptionalInput<String>(accountName),
      identity = pulumi.Input.asInput<Identity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'identity': pulumi.Input.mapInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: map['accountName'] == null ? null : pulumi.Output.create<String>(map['accountName'] as String),
      identity: pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

