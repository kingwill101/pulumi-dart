// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_properties.dart';
import 'identity.dart';
import 'network_rule_set.dart';

/// {@template pulumi_elasticsan_volume_group_args_doc}
/// The set of arguments for VolumeGroup.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_volume_group_args_doc}
class VolumeGroupArgs {
  /// The name of the ElasticSan.
  final pulumi.Input<String> elasticSanName;
  /// Type of encryption
  final pulumi.Input<String>? encryption;
  /// Encryption Properties describing Key Vault and Identity information
  final pulumi.Input<EncryptionProperties>? encryptionProperties;
  /// A boolean indicating whether or not Data Integrity Check is enabled
  final pulumi.Input<bool>? enforceDataIntegrityCheckForIscsi;
  /// The identity of the resource.
  final pulumi.Input<Identity>? identity;
  /// A collection of rules governing the accessibility from specific network locations.
  final pulumi.Input<NetworkRuleSet>? networkAcls;
  /// Type of storage target
  final pulumi.Input<String>? protocolType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the VolumeGroup.
  final pulumi.Input<String>? volumeGroupName;

  /// Creates a new [VolumeGroupArgs].
  /// [elasticSanName] The name of the ElasticSan.
  /// [encryption] Type of encryption
  /// [encryptionProperties] Encryption Properties describing Key Vault and Identity information
  /// [enforceDataIntegrityCheckForIscsi] A boolean indicating whether or not Data Integrity Check is enabled
  /// [identity] The identity of the resource.
  /// [networkAcls] A collection of rules governing the accessibility from specific network locations.
  /// [protocolType] Type of storage target
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [volumeGroupName] The name of the VolumeGroup.
  VolumeGroupArgs({
    required this.elasticSanName,
    this.encryption,
    this.encryptionProperties,
    this.enforceDataIntegrityCheckForIscsi,
    this.identity,
    this.networkAcls,
    this.protocolType,
    required this.resourceGroupName,
    this.volumeGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticSanName': elasticSanName,
      'encryption': ?encryption,
      'encryptionProperties': ?pulumi.Input.mapOptionalInputValue<EncryptionProperties, Map<String, dynamic>>(encryptionProperties, (value) => value.toMap()),
      'enforceDataIntegrityCheckForIscsi': ?enforceDataIntegrityCheckForIscsi,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<NetworkRuleSet, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'protocolType': ?protocolType,
      'resourceGroupName': resourceGroupName,
      'volumeGroupName': ?volumeGroupName,
    };
  }

  factory VolumeGroupArgs.fromMap(Map<String, dynamic> map) {
    return VolumeGroupArgs(
      elasticSanName: (map['elasticSanName'] as String).input(),
      encryption: map['encryption'] == null ? null : (map['encryption'] as String).input(),
      encryptionProperties: map['encryptionProperties'] == null ? null : (EncryptionProperties.fromMap((map['encryptionProperties'] as Map).cast<String, dynamic>())).input(),
      enforceDataIntegrityCheckForIscsi: map['enforceDataIntegrityCheckForIscsi'] == null ? null : (map['enforceDataIntegrityCheckForIscsi'] as bool).input(),
      identity: map['identity'] == null ? null : (Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      networkAcls: map['networkAcls'] == null ? null : (NetworkRuleSet.fromMap((map['networkAcls'] as Map).cast<String, dynamic>())).input(),
      protocolType: map['protocolType'] == null ? null : (map['protocolType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      volumeGroupName: map['volumeGroupName'] == null ? null : (map['volumeGroupName'] as String).input(),
    );
  }
}

