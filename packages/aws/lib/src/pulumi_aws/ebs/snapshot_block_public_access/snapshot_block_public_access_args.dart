// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for SnapshotBlockPublicAccess.
class SnapshotBlockPublicAccessArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The mode in which to enable "Block public access for snapshots" for the region. Allowed values are `block-all-sharing`, `block-new-sharing`, `unblocked`.
  final Input<String> state;

  SnapshotBlockPublicAccessArgs({
    this.region,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['state'] = state;
    return map;
  }

  factory SnapshotBlockPublicAccessArgs.fromMap(Map<String, dynamic> map) {
    return SnapshotBlockPublicAccessArgs(
      region: Input.asOptionalInput<String>(map['region']),
      state: Input.asInput<String>(map['state']),
    );
  }
}
