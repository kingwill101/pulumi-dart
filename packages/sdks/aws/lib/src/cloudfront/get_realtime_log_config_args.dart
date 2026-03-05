// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfront_get_realtime_log_config_get_realtime_log_config_args_doc}
/// Arguments for getRealtimeLogConfig.
/// {@endtemplate}
/// {@macro pulumi_cloudfront_get_realtime_log_config_get_realtime_log_config_args_doc}
class GetRealtimeLogConfigArgs {
  /// Unique name to identify this real-time log configuration.
  final pulumi.Input<String> name;

  /// Creates a new [GetRealtimeLogConfigArgs].
  /// [name] Unique name to identify this real-time log configuration.
  GetRealtimeLogConfigArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetRealtimeLogConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetRealtimeLogConfigArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

