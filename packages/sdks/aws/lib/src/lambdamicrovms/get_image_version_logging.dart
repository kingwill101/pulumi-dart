// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_version_logging_cloudwatch.dart';

class GetImageVersionLogging {
  /// CloudWatch Logs configuration. See `cloudwatch` below.
  final pulumi.Input<List<GetImageVersionLoggingCloudwatch>> cloudwatches;
  /// Present when logging is disabled.
  final pulumi.Input<List<Map<String, dynamic>>> disableds;

  /// Creates a new [GetImageVersionLogging].
  /// [cloudwatches] CloudWatch Logs configuration. See `cloudwatch` below.
  /// [disableds] Present when logging is disabled.
  const GetImageVersionLogging({
    required this.cloudwatches,
    required this.disableds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatches': pulumi.Input.mapInputValue<List<GetImageVersionLoggingCloudwatch>, List<Map<String, dynamic>>>(cloudwatches, (value) => pulumi.Input.encodeList<GetImageVersionLoggingCloudwatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disableds': disableds,
    };
  }

  factory GetImageVersionLogging.fromMap(Map<String, dynamic> map) {
    return GetImageVersionLogging(
      cloudwatches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetImageVersionLoggingCloudwatch>(map['cloudwatches']!, (value) => GetImageVersionLoggingCloudwatch.fromMap((value as Map).cast<String, dynamic>()))),
      disableds: pulumi.Input.fromValue((map['disableds'] as List).cast<Map<String, dynamic>>()),
    );
  }
}
