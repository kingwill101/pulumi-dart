// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Snapshot.
class SnapshotArgs7 {
  /// Optional. See [Creating and managing labels](https://cloud.google.com/pubsub/docs/labels).
  final Input<Map<String, String>>? labels;
  final Input<String>? project;
  final Input<String> snapshotId;

  /// The subscription whose backlog the snapshot retains. Specifically, the created snapshot is guaranteed to retain: (a) The existing backlog on the subscription. More precisely, this is defined as the messages in the subscription's backlog that are unacknowledged upon the successful completion of the `CreateSnapshot` request; as well as: (b) Any messages published to the subscription's topic following the successful completion of the CreateSnapshot request. Format is `projects/{project}/subscriptions/{sub}`.
  final Input<String> subscription;

  SnapshotArgs7({
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

  factory SnapshotArgs7.fromMap(Map<String, dynamic> map) {
    return SnapshotArgs7(
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      project: Input.asOptionalInput<String>(map['project']),
      snapshotId: Input.asInput<String>(map['snapshotId']),
      subscription: Input.asInput<String>(map['subscription']),
    );
  }
}
