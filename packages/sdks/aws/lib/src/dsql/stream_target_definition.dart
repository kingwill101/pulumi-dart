// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_target_definition_kinesis.dart';

class StreamTargetDefinition {
  /// Kinesis stream target configuration. See `target_definition.kinesis` Block below.
  final pulumi.Input<StreamTargetDefinitionKinesis> kinesis;

  /// Creates a new [StreamTargetDefinition].
  /// [kinesis] Kinesis stream target configuration. See `target_definition.kinesis` Block below.
  const StreamTargetDefinition({
    required this.kinesis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kinesis': pulumi.Input.mapInputValue<StreamTargetDefinitionKinesis, Map<String, dynamic>>(kinesis, (value) => value.toMap()),
    };
  }

  factory StreamTargetDefinition.fromMap(Map<String, dynamic> map) {
    return StreamTargetDefinition(
      kinesis: pulumi.Input.fromValue(StreamTargetDefinitionKinesis.fromMap((map['kinesis']! as Map).cast<String, dynamic>())),
    );
  }
}
