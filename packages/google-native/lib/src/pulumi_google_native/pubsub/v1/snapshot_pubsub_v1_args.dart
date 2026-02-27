// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Snapshot.
class SnapshotPubsubV1Args {
  /// Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> snapshotId;

  /// The subscription whose backlog the snapshot retains. Specifically, the created snapshot is guaranteed to retain: (a) The existing backlog on the subscription. More precisely, this is defined as the messages in the subscription's backlog that are unacknowledged upon the successful completion of the `CreateSnapshot` request; as well as: (b) Any messages published to the subscription's topic following the successful completion of the CreateSnapshot request. Format is `projects/{project}/subscriptions/{sub}`.
  final pulumi.Input<String> subscription;

  SnapshotPubsubV1Args({
    this.labels,
    this.project,
    required this.snapshotId,
    required this.subscription,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['snapshotId'] = snapshotId;
    map['subscription'] = subscription;
    return map;
  }

  factory SnapshotPubsubV1Args.fromMap(Map<String, dynamic> map) {
    return SnapshotPubsubV1Args(
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      snapshotId: pulumi.Input.asInput<String>(map['snapshotId']),
      subscription: pulumi.Input.asInput<String>(map['subscription']),
    );
  }
}
