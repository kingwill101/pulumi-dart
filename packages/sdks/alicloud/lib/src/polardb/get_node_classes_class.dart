// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_classes_class_supported_engine.dart';

class GetNodeClassesClass {
  /// A list of PolarDB node classes in the zone.
  final List<GetNodeClassesClassSupportedEngine> supportedEngines;
  /// The Zone to launch the PolarDB cluster.
  final String zoneId;

  /// Creates a new [GetNodeClassesClass].
  /// [supportedEngines] A list of PolarDB node classes in the zone.
  /// [zoneId] The Zone to launch the PolarDB cluster.
  GetNodeClassesClass({
    required this.supportedEngines,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'supportedEngines': pulumi.Input.encodeList<GetNodeClassesClassSupportedEngine, Map<String, dynamic>>(supportedEngines, (value) => value.toMap()),
      'zoneId': zoneId,
    };
  }

  factory GetNodeClassesClass.fromMap(Map<String, dynamic> map) {
    return GetNodeClassesClass(
      supportedEngines: pulumi.Input.decodeList<GetNodeClassesClassSupportedEngine>(map['supportedEngines'], (value) => GetNodeClassesClassSupportedEngine.fromMap((value as Map).cast<String, dynamic>())),
      zoneId: map['zoneId'] as String,
    );
  }
}

