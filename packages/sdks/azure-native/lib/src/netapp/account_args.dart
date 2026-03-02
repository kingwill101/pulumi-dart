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
  AccountArgs({
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
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      activeDirectories: map['activeDirectories'] == null ? null : (pulumi.Input.decodeList<ActiveDirectory>(map['activeDirectories']!, (value) => ActiveDirectory.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryption: map['encryption'] == null ? null : (AccountEncryption.fromMap((map['encryption']! as Map).cast<String, dynamic>())).input(),
      identity: map['identity'] == null ? null : (ManagedServiceIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

