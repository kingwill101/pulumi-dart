// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lun_range.dart';
import 'nfs_export.dart';
import 'volume_config_performance_tier.dart';
import 'volume_config_protocol.dart';
import 'volume_config_type.dart';

/// Configuration parameters for a new volume.
class VolumeConfig {
  /// The GCP service of the storage volume. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  final String? gcpService;

  /// A transient unique identifier to identify a volume within an ProvisioningConfig request.
  final String? id;

  /// LUN ranges to be configured. Set only when protocol is PROTOCOL_FC.
  final List<LunRange>? lunRanges;

  /// Machine ids connected to this volume. Set only when protocol is PROTOCOL_FC.
  final List<String>? machineIds;

  /// NFS exports. Set only when protocol is PROTOCOL_NFS.
  final List<NfsExport>? nfsExports;

  /// Performance tier of the Volume. Default is SHARED.
  final VolumeConfigPerformanceTier? performanceTier;

  /// Volume protocol.
  final VolumeConfigProtocol? protocol;

  /// The requested size of this volume, in GB.
  final int? sizeGb;

  /// Whether snapshots should be enabled.
  final bool? snapshotsEnabled;

  /// The type of this Volume.
  final VolumeConfigType? type;

  /// User note field, it can be used by customers to add additional information for the BMS Ops team .
  final String? userNote;

  /// Creates a new [VolumeConfig].
  /// [gcpService] The GCP service of the storage volume. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  /// [id] A transient unique identifier to identify a volume within an ProvisioningConfig request.
  /// [lunRanges] LUN ranges to be configured. Set only when protocol is PROTOCOL_FC.
  /// [machineIds] Machine ids connected to this volume. Set only when protocol is PROTOCOL_FC.
  /// [nfsExports] NFS exports. Set only when protocol is PROTOCOL_NFS.
  /// [performanceTier] Performance tier of the Volume. Default is SHARED.
  /// [protocol] Volume protocol.
  /// [sizeGb] The requested size of this volume, in GB.
  /// [snapshotsEnabled] Whether snapshots should be enabled.
  /// [type] The type of this Volume.
  /// [userNote] User note field, it can be used by customers to add additional information for the BMS Ops team .
  VolumeConfig({
    this.gcpService,
    this.id,
    this.lunRanges,
    this.machineIds,
    this.nfsExports,
    this.performanceTier,
    this.protocol,
    this.sizeGb,
    this.snapshotsEnabled,
    this.type,
    this.userNote,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcpServiceValue = gcpService;
    if (gcpServiceValue != null) {
      map['gcpService'] = gcpServiceValue;
    }
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final lunRangesValue = lunRanges;
    if (lunRangesValue != null) {
      map['lunRanges'] =
          pulumi.Input.encodeList<LunRange, Map<String, dynamic>>(
              lunRangesValue, (value) => value.toMap());
    }
    final machineIdsValue = machineIds;
    if (machineIdsValue != null) {
      map['machineIds'] = machineIdsValue;
    }
    final nfsExportsValue = nfsExports;
    if (nfsExportsValue != null) {
      map['nfsExports'] =
          pulumi.Input.encodeList<NfsExport, Map<String, dynamic>>(
              nfsExportsValue, (value) => value.toMap());
    }
    final performanceTierValue = performanceTier;
    if (performanceTierValue != null) {
      map['performanceTier'] = performanceTierValue.value;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue.value;
    }
    final sizeGbValue = sizeGb;
    if (sizeGbValue != null) {
      map['sizeGb'] = sizeGbValue;
    }
    final snapshotsEnabledValue = snapshotsEnabled;
    if (snapshotsEnabledValue != null) {
      map['snapshotsEnabled'] = snapshotsEnabledValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue.value;
    }
    final userNoteValue = userNote;
    if (userNoteValue != null) {
      map['userNote'] = userNoteValue;
    }
    return map;
  }

  factory VolumeConfig.fromMap(Map<String, dynamic> map) {
    return VolumeConfig(
      gcpService:
          map['gcpService'] == null ? null : map['gcpService'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      lunRanges: map['lunRanges'] == null
          ? null
          : pulumi.Input.decodeList<LunRange>(
              map['lunRanges'],
              (value) =>
                  LunRange.fromMap((value as Map).cast<String, dynamic>())),
      machineIds: map['machineIds'] == null
          ? null
          : (map['machineIds'] as List).cast<String>(),
      nfsExports: map['nfsExports'] == null
          ? null
          : pulumi.Input.decodeList<NfsExport>(
              map['nfsExports'],
              (value) =>
                  NfsExport.fromMap((value as Map).cast<String, dynamic>())),
      performanceTier: map['performanceTier'] == null
          ? null
          : VolumeConfigPerformanceTier.fromValue(
              map['performanceTier'] as String),
      protocol: map['protocol'] == null
          ? null
          : VolumeConfigProtocol.fromValue(map['protocol'] as String),
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as int,
      snapshotsEnabled: map['snapshotsEnabled'] == null
          ? null
          : map['snapshotsEnabled'] as bool,
      type: map['type'] == null
          ? null
          : VolumeConfigType.fromValue(map['type'] as String),
      userNote: map['userNote'] == null ? null : map['userNote'] as String,
    );
  }
}
