// ignore_for_file: unused_element, unnecessary_cast

class VolumeReplicationHybridPeeringDetail {
  /// (Output)
  /// Optional. Copy-paste-able commands to be used on user's ONTAP to accept peering requests.
  final String? command;

  /// (Output)
  /// Optional. Expiration time for the peering command to be executed on user's ONTAP.
  /// Uses RFC 3339, where generated output will always be Z-normalized and uses 0, 3, 6 or 9 fractional digits. Offsets other than "Z" are also accepted.
  final String? commandExpiryTime;

  /// (Output)
  /// Optional. Temporary passphrase generated to accept cluster peering command.
  final String? passphrase;

  /// (Output)
  /// Optional. Name of the user's local source cluster to be peered with the destination cluster.
  final String? peerClusterName;

  /// (Output)
  /// Optional. Name of the user's local source vserver svm to be peered with the destination vserver svm.
  final String? peerSvmName;

  /// (Output)
  /// Optional. Name of the user's local source volume to be peered with the destination volume.
  final String? peerVolumeName;

  /// (Output)
  /// Optional. IP address of the subnet.
  final String? subnetIp;

  /// Creates a new [VolumeReplicationHybridPeeringDetail].
  /// [command] (Output)
  /// [commandExpiryTime] (Output)
  /// [passphrase] (Output)
  /// [peerClusterName] (Output)
  /// [peerSvmName] (Output)
  /// [peerVolumeName] (Output)
  /// [subnetIp] (Output)
  VolumeReplicationHybridPeeringDetail({
    this.command,
    this.commandExpiryTime,
    this.passphrase,
    this.peerClusterName,
    this.peerSvmName,
    this.peerVolumeName,
    this.subnetIp,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final commandValue = command;
    if (commandValue != null) {
      map['command'] = commandValue;
    }
    final commandExpiryTimeValue = commandExpiryTime;
    if (commandExpiryTimeValue != null) {
      map['commandExpiryTime'] = commandExpiryTimeValue;
    }
    final passphraseValue = passphrase;
    if (passphraseValue != null) {
      map['passphrase'] = passphraseValue;
    }
    final peerClusterNameValue = peerClusterName;
    if (peerClusterNameValue != null) {
      map['peerClusterName'] = peerClusterNameValue;
    }
    final peerSvmNameValue = peerSvmName;
    if (peerSvmNameValue != null) {
      map['peerSvmName'] = peerSvmNameValue;
    }
    final peerVolumeNameValue = peerVolumeName;
    if (peerVolumeNameValue != null) {
      map['peerVolumeName'] = peerVolumeNameValue;
    }
    final subnetIpValue = subnetIp;
    if (subnetIpValue != null) {
      map['subnetIp'] = subnetIpValue;
    }
    return map;
  }

  factory VolumeReplicationHybridPeeringDetail.fromMap(
      Map<String, dynamic> map) {
    return VolumeReplicationHybridPeeringDetail(
      command: map['command'] == null ? null : map['command'] as String,
      commandExpiryTime: map['commandExpiryTime'] == null
          ? null
          : map['commandExpiryTime'] as String,
      passphrase:
          map['passphrase'] == null ? null : map['passphrase'] as String,
      peerClusterName: map['peerClusterName'] == null
          ? null
          : map['peerClusterName'] as String,
      peerSvmName:
          map['peerSvmName'] == null ? null : map['peerSvmName'] as String,
      peerVolumeName: map['peerVolumeName'] == null
          ? null
          : map['peerVolumeName'] as String,
      subnetIp: map['subnetIp'] == null ? null : map['subnetIp'] as String,
    );
  }
}
