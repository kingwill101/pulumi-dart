// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_encryption.dart';
import 'active_directory.dart';
import 'managed_service_identity.dart';

/// {@template pulumi_netapp_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_netapp_account_args_doc}
class AccountArgs {
  /// The name of the NetApp account
  final pulumi.Input<String>? accountName;
  /// Active Directories
  final pulumi.Input<List<ActiveDirectory>>? activeDirectories;
  /// Encryption settings
  final pulumi.Input<AccountEncryption>? encryption;
  /// The identity used for the resource.
  final pulumi.Input<ManagedServiceIdentity>? identity;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [accountName] The name of the NetApp account
  /// [activeDirectories] Active Directories
  /// [encryption] Encryption settings
  /// [identity] The identity used for the resource.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  const AccountArgs({
    this.accountName,
    this.activeDirectories,
    this.encryption,
    this.identity,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'activeDirectories': ?pulumi.Input.mapOptionalInputValue<List<ActiveDirectory>, List<Map<String, dynamic>>>(activeDirectories, (value) => pulumi.Input.encodeList<ActiveDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryption': ?pulumi.Input.mapOptionalInputValue<AccountEncryption, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      activeDirectories: (() { final guardedValue = map['activeDirectories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActiveDirectory>(guardedValue, (value) => ActiveDirectory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountEncryption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

