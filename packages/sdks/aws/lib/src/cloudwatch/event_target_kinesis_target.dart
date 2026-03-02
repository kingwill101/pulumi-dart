// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventTargetKinesisTarget {
  /// The JSON path to be extracted from the event and used as the partition key.
  final pulumi.Input<String>? partitionKeyPath;

  /// Creates a new [EventTargetKinesisTarget].
  /// [partitionKeyPath] The JSON path to be extracted from the event and used as the partition key.
  EventTargetKinesisTarget({
    this.partitionKeyPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partitionKeyPath': ?partitionKeyPath,
    };
  }

  factory EventTargetKinesisTarget.fromMap(Map<String, dynamic> map) {
    return EventTargetKinesisTarget(
      partitionKeyPath: map['partitionKeyPath'] == null ? null : (map['partitionKeyPath'] as String).input(),
    );
  }
}

