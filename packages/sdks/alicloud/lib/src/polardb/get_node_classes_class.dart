// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_classes_class_supported_engine.dart';

class GetNodeClassesClass {
  /// A list of PolarDB node classes in the zone.
  final pulumi.Input<List<GetNodeClassesClassSupportedEngine>> supportedEngines;
  /// The Zone to launch the PolarDB cluster.
  final pulumi.Input<String> zoneId;

  /// Creates a new [GetNodeClassesClass].
  /// [supportedEngines] A list of PolarDB node classes in the zone.
  /// [zoneId] The Zone to launch the PolarDB cluster.
  const GetNodeClassesClass({
    required this.supportedEngines,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedEngines': pulumi.Input.mapInputValue<List<GetNodeClassesClassSupportedEngine>, List<Map<String, dynamic>>>(supportedEngines, (value) => pulumi.Input.encodeList<GetNodeClassesClassSupportedEngine, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zoneId': zoneId,
    };
  }

  factory GetNodeClassesClass.fromMap(Map<String, dynamic> map) {
    return GetNodeClassesClass(
      supportedEngines: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNodeClassesClassSupportedEngine>(map['supportedEngines']!, (value) => GetNodeClassesClassSupportedEngine.fromMap((value as Map).cast<String, dynamic>()))),
      zoneId: pulumi.Input.fromValue(map['zoneId'] as String),
    );
  }
}

