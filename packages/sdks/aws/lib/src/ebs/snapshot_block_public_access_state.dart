// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SnapshotBlockPublicAccess resources.
class SnapshotBlockPublicAccessState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The mode in which to enable "Block public access for snapshots" for the region. Allowed values are `block-all-sharing`, `block-new-sharing`, `unblocked`.
  final pulumi.Input<String?>? state;

  /// Creates a new [SnapshotBlockPublicAccessState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] The mode in which to enable "Block public access for snapshots" for the region. Allowed values are `block-all-sharing`, `block-new-sharing`, `unblocked`.
  const SnapshotBlockPublicAccessState({
    this.region,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'state': ?state,
    };
  }

  factory SnapshotBlockPublicAccessState.fromMap(Map<String, dynamic> map) {
    return SnapshotBlockPublicAccessState(
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
