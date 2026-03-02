// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEventBusLogConfig {
  /// Whether EventBridge include detailed event information in the records it generates.
  final pulumi.Input<String> includeDetail;
  /// Level of logging detail to include.
  final pulumi.Input<String> level;

  /// Creates a new [GetEventBusLogConfig].
  /// [includeDetail] Whether EventBridge include detailed event information in the records it generates.
  /// [level] Level of logging detail to include.
  GetEventBusLogConfig({
    required this.includeDetail,
    required this.level,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'includeDetail': includeDetail,
      'level': level,
    };
  }

  factory GetEventBusLogConfig.fromMap(Map<String, dynamic> map) {
    return GetEventBusLogConfig(
      includeDetail: (map['includeDetail'] as String).input(),
      level: (map['level'] as String).input(),
    );
  }
}

