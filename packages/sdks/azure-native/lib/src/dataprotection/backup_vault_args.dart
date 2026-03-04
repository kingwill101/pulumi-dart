// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_vault_dataprotection.dart';
import 'dpp_identity_details.dart';

/// {@template pulumi_dataprotection_backup_vault_args_doc}
/// The set of arguments for BackupVault.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_vault_args_doc}
class BackupVaultArgs {
  /// Optional ETag.
  final pulumi.Input<String>? eTag;

  /// Input Managed Identity Details
  final pulumi.Input<DppIdentityDetails>? identity;

  /// Resource location.
  final pulumi.Input<String>? location;

  /// BackupVaultResource properties
  final pulumi.Input<BackupVaultDataprotection> properties;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// The name of the backup vault.
  final pulumi.Input<String>? vaultName;

  /// Creates a new [BackupVaultArgs].
  /// [eTag] Optional ETag.
  /// [identity] Input Managed Identity Details
  /// [location] Resource location.
  /// [properties] BackupVaultResource properties
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [vaultName] The name of the backup vault.
  BackupVaultArgs({
    this.eTag,
    this.identity,
    this.location,
    required this.properties,
    required this.resourceGroupName,
    this.tags,
    this.vaultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eTag': ?eTag,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            DppIdentityDetails,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'location': ?location,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'vaultName': ?vaultName,
    };
  }

  factory BackupVaultArgs.fromMap(Map<String, dynamic> map) {
    return BackupVaultArgs(
      eTag: (() {
        final guardedValue = map['eTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DppIdentityDetails.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: pulumi.Input.fromValue(
        map['properties'] as BackupVaultDataprotection,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vaultName: (() {
        final guardedValue = map['vaultName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
