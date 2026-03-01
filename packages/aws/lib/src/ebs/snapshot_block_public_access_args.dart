// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_snapshot_block_public_access_snapshot_block_public_access_args_doc}
/// The set of arguments for SnapshotBlockPublicAccess.
/// {@endtemplate}
/// {@macro pulumi_ebs_snapshot_block_public_access_snapshot_block_public_access_args_doc}
class SnapshotBlockPublicAccessArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The mode in which to enable "Block public access for snapshots" for the region. Allowed values are `block-all-sharing`, `block-new-sharing`, `unblocked`.
  final pulumi.Input<String> state;

  /// Creates a new [SnapshotBlockPublicAccessArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] The mode in which to enable "Block public access for snapshots" for the region. Allowed values are `block-all-sharing`, `block-new-sharing`, `unblocked`.
  SnapshotBlockPublicAccessArgs({String? region, required String state})
    : region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region, 'state': state};
  }

  factory SnapshotBlockPublicAccessArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotBlockPublicAccessArgs(
      region: map['region'] == null ? null : map['region'] as String,
      state: map['state'] as String,
    );
  }
}
