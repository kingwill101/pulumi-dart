// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blockstorage_get_snapshot_v3_get_snapshot_v3_args_doc}
/// Arguments for getSnapshotV3.
/// {@endtemplate}
/// {@macro pulumi_blockstorage_get_snapshot_v3_get_snapshot_v3_args_doc}
class GetSnapshotV3Args {
  /// Pick the most recently created snapshot if there
  /// are multiple results.
  final pulumi.Input<bool>? mostRecent;
  /// The name of the snapshot.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V3 Block Storage
  /// client. If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// The status of the snapshot.
  final pulumi.Input<String>? status;
  /// The ID of the snapshot's volume.
  final pulumi.Input<String>? volumeId;

  /// Creates a new [GetSnapshotV3Args].
  /// [mostRecent] Pick the most recently created snapshot if there
  /// [name] The name of the snapshot.
  /// [region] The region in which to obtain the V3 Block Storage
  /// [status] The status of the snapshot.
  /// [volumeId] The ID of the snapshot's volume.
  GetSnapshotV3Args({
    bool? mostRecent,
    String? name,
    String? region,
    String? status,
    String? volumeId,
  }) :
      mostRecent = pulumi.Input.asOptionalInput<bool>(mostRecent),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      volumeId = pulumi.Input.asOptionalInput<String>(volumeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mostRecent': ?mostRecent,
      'name': ?name,
      'region': ?region,
      'status': ?status,
      'volumeId': ?volumeId,
    };
  }

  factory GetSnapshotV3Args.fromMap(Map<String, dynamic> map) {
    return GetSnapshotV3Args(
      mostRecent: map['mostRecent'] == null ? null : map['mostRecent'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      volumeId: map['volumeId'] == null ? null : map['volumeId'] as String,
    );
  }
}

