// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'explain_query_step_response.dart';

class ExplainQueryStageResponse {
  /// Number of parallel input segments completed.
  final String completedParallelInputs;

  /// Milliseconds the average shard spent on CPU-bound tasks.
  final String computeMsAvg;

  /// Milliseconds the slowest shard spent on CPU-bound tasks.
  final String computeMsMax;

  /// Relative amount of time the average shard spent on CPU-bound tasks.
  final double computeRatioAvg;

  /// Relative amount of time the slowest shard spent on CPU-bound tasks.
  final double computeRatioMax;

  /// Stage end time represented as milliseconds since epoch.
  final String endMs;

  /// IDs for stages that are inputs to this stage.
  final List<String> inputStages;

  /// Human-readable name for stage.
  final String name;

  /// Number of parallel input segments to be processed.
  final String parallelInputs;

  /// Milliseconds the average shard spent reading input.
  final String readMsAvg;

  /// Milliseconds the slowest shard spent reading input.
  final String readMsMax;

  /// Relative amount of time the average shard spent reading input.
  final double readRatioAvg;

  /// Relative amount of time the slowest shard spent reading input.
  final double readRatioMax;

  /// Number of records read into the stage.
  final String recordsRead;

  /// Number of records written by the stage.
  final String recordsWritten;

  /// Total number of bytes written to shuffle.
  final String shuffleOutputBytes;

  /// Total number of bytes written to shuffle and spilled to disk.
  final String shuffleOutputBytesSpilled;

  /// Slot-milliseconds used by the stage.
  final String slotMs;

  /// Stage start time represented as milliseconds since epoch.
  final String startMs;

  /// Current status for the stage.
  final String status;

  /// List of operations within the stage in dependency order (approximately chronological).
  final List<ExplainQueryStepResponse> steps;

  /// Milliseconds the average shard spent waiting to be scheduled.
  final String waitMsAvg;

  /// Milliseconds the slowest shard spent waiting to be scheduled.
  final String waitMsMax;

  /// Relative amount of time the average shard spent waiting to be scheduled.
  final double waitRatioAvg;

  /// Relative amount of time the slowest shard spent waiting to be scheduled.
  final double waitRatioMax;

  /// Milliseconds the average shard spent on writing output.
  final String writeMsAvg;

  /// Milliseconds the slowest shard spent on writing output.
  final String writeMsMax;

  /// Relative amount of time the average shard spent on writing output.
  final double writeRatioAvg;

  /// Relative amount of time the slowest shard spent on writing output.
  final double writeRatioMax;

  ExplainQueryStageResponse({
    required this.completedParallelInputs,
    required this.computeMsAvg,
    required this.computeMsMax,
    required this.computeRatioAvg,
    required this.computeRatioMax,
    required this.endMs,
    required this.inputStages,
    required this.name,
    required this.parallelInputs,
    required this.readMsAvg,
    required this.readMsMax,
    required this.readRatioAvg,
    required this.readRatioMax,
    required this.recordsRead,
    required this.recordsWritten,
    required this.shuffleOutputBytes,
    required this.shuffleOutputBytesSpilled,
    required this.slotMs,
    required this.startMs,
    required this.status,
    required this.steps,
    required this.waitMsAvg,
    required this.waitMsMax,
    required this.waitRatioAvg,
    required this.waitRatioMax,
    required this.writeMsAvg,
    required this.writeMsMax,
    required this.writeRatioAvg,
    required this.writeRatioMax,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['completedParallelInputs'] = completedParallelInputs;
    map['computeMsAvg'] = computeMsAvg;
    map['computeMsMax'] = computeMsMax;
    map['computeRatioAvg'] = computeRatioAvg;
    map['computeRatioMax'] = computeRatioMax;
    map['endMs'] = endMs;
    map['inputStages'] = inputStages;
    map['name'] = name;
    map['parallelInputs'] = parallelInputs;
    map['readMsAvg'] = readMsAvg;
    map['readMsMax'] = readMsMax;
    map['readRatioAvg'] = readRatioAvg;
    map['readRatioMax'] = readRatioMax;
    map['recordsRead'] = recordsRead;
    map['recordsWritten'] = recordsWritten;
    map['shuffleOutputBytes'] = shuffleOutputBytes;
    map['shuffleOutputBytesSpilled'] = shuffleOutputBytesSpilled;
    map['slotMs'] = slotMs;
    map['startMs'] = startMs;
    map['status'] = status;
    map['steps'] =
        Input.encodeList<ExplainQueryStepResponse, Map<String, dynamic>>(
            steps, (value) => value.toMap());
    map['waitMsAvg'] = waitMsAvg;
    map['waitMsMax'] = waitMsMax;
    map['waitRatioAvg'] = waitRatioAvg;
    map['waitRatioMax'] = waitRatioMax;
    map['writeMsAvg'] = writeMsAvg;
    map['writeMsMax'] = writeMsMax;
    map['writeRatioAvg'] = writeRatioAvg;
    map['writeRatioMax'] = writeRatioMax;
    return map;
  }

  factory ExplainQueryStageResponse.fromMap(Map<String, dynamic> map) {
    return ExplainQueryStageResponse(
      completedParallelInputs: map['completedParallelInputs'] as String,
      computeMsAvg: map['computeMsAvg'] as String,
      computeMsMax: map['computeMsMax'] as String,
      computeRatioAvg: map['computeRatioAvg'] as double,
      computeRatioMax: map['computeRatioMax'] as double,
      endMs: map['endMs'] as String,
      inputStages: (map['inputStages'] as List).cast<String>(),
      name: map['name'] as String,
      parallelInputs: map['parallelInputs'] as String,
      readMsAvg: map['readMsAvg'] as String,
      readMsMax: map['readMsMax'] as String,
      readRatioAvg: map['readRatioAvg'] as double,
      readRatioMax: map['readRatioMax'] as double,
      recordsRead: map['recordsRead'] as String,
      recordsWritten: map['recordsWritten'] as String,
      shuffleOutputBytes: map['shuffleOutputBytes'] as String,
      shuffleOutputBytesSpilled: map['shuffleOutputBytesSpilled'] as String,
      slotMs: map['slotMs'] as String,
      startMs: map['startMs'] as String,
      status: map['status'] as String,
      steps: Input.decodeList<ExplainQueryStepResponse>(
          map['steps'],
          (value) => ExplainQueryStepResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      waitMsAvg: map['waitMsAvg'] as String,
      waitMsMax: map['waitMsMax'] as String,
      waitRatioAvg: map['waitRatioAvg'] as double,
      waitRatioMax: map['waitRatioMax'] as double,
      writeMsAvg: map['writeMsAvg'] as String,
      writeMsMax: map['writeMsMax'] as String,
      writeRatioAvg: map['writeRatioAvg'] as double,
      writeRatioMax: map['writeRatioMax'] as double,
    );
  }
}
