// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_disk_signature_exclusion_options.dart';
import 'in_mage_volume_exclusion_options.dart';

/// DiskExclusionInput when doing enable protection of virtual machine in InMage provider.
class InMageDiskExclusionInput {
  /// The guest disk signature based option for disk exclusion.
  final List<InMageDiskSignatureExclusionOptions>? diskSignatureOptions;
  /// The volume label based option for disk exclusion.
  final List<InMageVolumeExclusionOptions>? volumeOptions;

  /// Creates a new [InMageDiskExclusionInput].
  /// [diskSignatureOptions] The guest disk signature based option for disk exclusion.
  /// [volumeOptions] The volume label based option for disk exclusion.
  InMageDiskExclusionInput({
    this.diskSignatureOptions,
    this.volumeOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSignatureOptions': ?diskSignatureOptions == null ? null : pulumi.Input.encodeList<InMageDiskSignatureExclusionOptions, Map<String, dynamic>>(diskSignatureOptions!, (value) => value.toMap()),
      'volumeOptions': ?volumeOptions == null ? null : pulumi.Input.encodeList<InMageVolumeExclusionOptions, Map<String, dynamic>>(volumeOptions!, (value) => value.toMap()),
    };
  }

  factory InMageDiskExclusionInput.fromMap(Map<String, dynamic> map) {
    return InMageDiskExclusionInput(
      diskSignatureOptions: map['diskSignatureOptions'] == null ? null : pulumi.Input.decodeList<InMageDiskSignatureExclusionOptions>(map['diskSignatureOptions'], (value) => InMageDiskSignatureExclusionOptions.fromMap((value as Map).cast<String, dynamic>())),
      volumeOptions: map['volumeOptions'] == null ? null : pulumi.Input.decodeList<InMageVolumeExclusionOptions>(map['volumeOptions'], (value) => InMageVolumeExclusionOptions.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

