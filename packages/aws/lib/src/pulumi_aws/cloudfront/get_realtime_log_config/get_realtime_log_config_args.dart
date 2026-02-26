// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRealtimeLogConfig.
class GetRealtimeLogConfigArgs {
  /// Unique name to identify this real-time log configuration.
  final Input<String> name;

  GetRealtimeLogConfigArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetRealtimeLogConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetRealtimeLogConfigArgs(
      name: Input.asInput<String>(map['name']),
    );
  }
}
