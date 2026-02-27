// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../engine_split_traffic_split/engine_split_traffic_split.dart';

/// The set of arguments for EngineSplitTraffic.
class EngineSplitTrafficArgs {
  /// If set to true traffic will be migrated to this version.
  final pulumi.Input<bool>? migrateTraffic;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The name of the service these settings apply to.
  final pulumi.Input<String> service;

  /// Mapping that defines fractional HTTP traffic diversion to different versions within the service.
  /// Structure is documented below.
  final pulumi.Input<EngineSplitTrafficSplit> split;

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
    map['split'] = pulumi.Input.mapInputValue<EngineSplitTrafficSplit,
        Map<String, dynamic>>(split, (value) => value.toMap());
    return map;
  }

  factory EngineSplitTrafficArgs.fromMap(Map<String, dynamic> map) {
    return EngineSplitTrafficArgs(
      migrateTraffic: pulumi.Input.asOptionalInput<bool>(map['migrateTraffic']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      service: pulumi.Input.asInput<String>(map['service']),
      split: pulumi.Input.asInput<EngineSplitTrafficSplit>(map['split']),
    );
  }
}
