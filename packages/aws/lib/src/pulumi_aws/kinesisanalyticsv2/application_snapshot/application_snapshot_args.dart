// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for ApplicationSnapshot.
class ApplicationSnapshotArgs {
  /// The name of an existing  Kinesis Analytics v2 Application. Note that the application must be running for a snapshot to be created.
  final pulumi.Input<String> applicationName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the application snapshot.
  final pulumi.Input<String> snapshotName;

  ApplicationSnapshotArgs({
    required this.applicationName,
    this.region,
    required this.snapshotName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationName'] = applicationName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['snapshotName'] = snapshotName;
    return map;
  }

  factory ApplicationSnapshotArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationSnapshotArgs(
      applicationName: pulumi.Input.asInput<String>(map['applicationName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      snapshotName: pulumi.Input.asInput<String>(map['snapshotName']),
    );
  }
}
