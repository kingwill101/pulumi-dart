// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../engine_split_traffic_split/engine_split_traffic_split.dart';

/// The set of arguments for EngineSplitTraffic.
class EngineSplitTrafficArgs {
  /// If set to true traffic will be migrated to this version.
  final Input<bool>? migrateTraffic;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The name of the service these settings apply to.
  final Input<String> service;

  /// Mapping that defines fractional HTTP traffic diversion to different versions within the service.
  /// Structure is documented below.
  final Input<EngineSplitTrafficSplit> split;

  EngineSplitTrafficArgs({
    this.migrateTraffic,
    this.project,
    required this.service,
    required this.split,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final migrateTrafficValue = migrateTraffic;
    if (migrateTrafficValue != null) {
      map['migrateTraffic'] = migrateTrafficValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['service'] = service;
    map['split'] =
        Input.mapInputValue<EngineSplitTrafficSplit, Map<String, dynamic>>(
            split, (value) => value.toMap());
    return map;
  }

  factory EngineSplitTrafficArgs.fromMap(Map<String, dynamic> map) {
    return EngineSplitTrafficArgs(
      migrateTraffic: Input.asOptionalInput<bool>(map['migrateTraffic']),
      project: Input.asOptionalInput<String>(map['project']),
      service: Input.asInput<String>(map['service']),
      split: Input.asInput<EngineSplitTrafficSplit>(map['split']),
    );
  }
}
