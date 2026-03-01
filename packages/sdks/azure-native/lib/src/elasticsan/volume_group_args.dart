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
    required pulumi.Output<String> elasticSanName,
    pulumi.Output<String>? encryption,
    pulumi.Output<EncryptionProperties>? encryptionProperties,
    pulumi.Output<bool>? enforceDataIntegrityCheckForIscsi,
    pulumi.Output<Identity>? identity,
    pulumi.Output<NetworkRuleSet>? networkAcls,
    pulumi.Output<String>? protocolType,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? volumeGroupName,
  }) :
      elasticSanName = pulumi.Input.asInput<String>(elasticSanName),
      encryption = pulumi.Input.asOptionalInput<String>(encryption),
      encryptionProperties = pulumi.Input.asOptionalInput<EncryptionProperties>(encryptionProperties),
      enforceDataIntegrityCheckForIscsi = pulumi.Input.asOptionalInput<bool>(enforceDataIntegrityCheckForIscsi),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      networkAcls = pulumi.Input.asOptionalInput<NetworkRuleSet>(networkAcls),
      protocolType = pulumi.Input.asOptionalInput<String>(protocolType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      volumeGroupName = pulumi.Input.asOptionalInput<String>(volumeGroupName);

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
      elasticSanName: pulumi.Output.create<String>(map['elasticSanName'] as String),
      encryption: map['encryption'] == null ? null : pulumi.Output.create<String>(map['encryption'] as String),
      encryptionProperties: map['encryptionProperties'] == null ? null : pulumi.Output.create<EncryptionProperties>(EncryptionProperties.fromMap((map['encryptionProperties'] as Map).cast<String, dynamic>())),
      enforceDataIntegrityCheckForIscsi: map['enforceDataIntegrityCheckForIscsi'] == null ? null : pulumi.Output.create<bool>(map['enforceDataIntegrityCheckForIscsi'] as bool),
      identity: map['identity'] == null ? null : pulumi.Output.create<Identity>(Identity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      networkAcls: map['networkAcls'] == null ? null : pulumi.Output.create<NetworkRuleSet>(NetworkRuleSet.fromMap((map['networkAcls'] as Map).cast<String, dynamic>())),
      protocolType: map['protocolType'] == null ? null : pulumi.Output.create<String>(map['protocolType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      volumeGroupName: map['volumeGroupName'] == null ? null : pulumi.Output.create<String>(map['volumeGroupName'] as String),
    );
  }
}

