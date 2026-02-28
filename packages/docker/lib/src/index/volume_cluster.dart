// ignore_for_file: unused_element, unnecessary_cast


class VolumeCluster {
  /// Availability of the volume. Can be `active` (default), `pause`, or `drain`.
  final String? availability;
  /// Cluster Volume group
  final String? group;
  /// The ID of the cluster volume.
  final String? id;
  /// Minimum size of the Cluster Volume in human readable memory bytes (like 128MiB, 2GiB, etc). Must be in format of KiB, MiB, Gib, Tib or PiB.
  final String? limitBytes;
  /// Maximum size of the Cluster Volume in human readable memory bytes (like 128MiB, 2GiB, etc). Must be in format of KiB, MiB, Gib, Tib or PiB.
  final String? requiredBytes;
  /// The scope of the volume. Can be `single` (default) or `multi`.
  final String? scope;
  /// The sharing mode. Can be `none` (default), `readonly`, `onewriter` or `all`.
  final String? sharing;
  /// A topology that the Cluster Volume would be preferred in
  final String? topologyPreferred;
  /// A topology that the Cluster Volume must be accessible from
  final String? topologyRequired;
  /// Cluster Volume access type. Can be `mount` or `block` (default).
  final String? type;

  /// Creates a new [VolumeCluster].
  /// [availability] Availability of the volume. Can be `active` (default), `pause`, or `drain`.
  /// [group] Cluster Volume group
  /// [id] The ID of the cluster volume.
  /// [limitBytes] Minimum size of the Cluster Volume in human readable memory bytes (like 128MiB, 2GiB, etc). Must be in format of KiB, MiB, Gib, Tib or PiB.
  /// [requiredBytes] Maximum size of the Cluster Volume in human readable memory bytes (like 128MiB, 2GiB, etc). Must be in format of KiB, MiB, Gib, Tib or PiB.
  /// [scope] The scope of the volume. Can be `single` (default) or `multi`.
  /// [sharing] The sharing mode. Can be `none` (default), `readonly`, `onewriter` or `all`.
  /// [topologyPreferred] A topology that the Cluster Volume would be preferred in
  /// [topologyRequired] A topology that the Cluster Volume must be accessible from
  /// [type] Cluster Volume access type. Can be `mount` or `block` (default).
  VolumeCluster({
    this.availability,
    this.group,
    this.id,
    this.limitBytes,
    this.requiredBytes,
    this.scope,
    this.sharing,
    this.topologyPreferred,
    this.topologyRequired,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availability': ?availability,
      'group': ?group,
      'id': ?id,
      'limitBytes': ?limitBytes,
      'requiredBytes': ?requiredBytes,
      'scope': ?scope,
      'sharing': ?sharing,
      'topologyPreferred': ?topologyPreferred,
      'topologyRequired': ?topologyRequired,
      'type': ?type,
    };
  }

  factory VolumeCluster.fromMap(Map<String, dynamic> map) {
    return VolumeCluster(
      availability: map['availability'] == null ? null : map['availability'] as String,
      group: map['group'] == null ? null : map['group'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      limitBytes: map['limitBytes'] == null ? null : map['limitBytes'] as String,
      requiredBytes: map['requiredBytes'] == null ? null : map['requiredBytes'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      sharing: map['sharing'] == null ? null : map['sharing'] as String,
      topologyPreferred: map['topologyPreferred'] == null ? null : map['topologyPreferred'] as String,
      topologyRequired: map['topologyRequired'] == null ? null : map['topologyRequired'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

