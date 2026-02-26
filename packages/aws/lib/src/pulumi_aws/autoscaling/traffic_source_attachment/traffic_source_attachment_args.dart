// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../traffic_source_attachment_traffic_source/traffic_source_attachment_traffic_source.dart';

/// The set of arguments for TrafficSourceAttachment.
class TrafficSourceAttachmentArgs {
  /// The name of the Auto Scaling group.
  final Input<String> autoscalingGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The unique identifiers of a traffic sources.
  final Input<TrafficSourceAttachmentTrafficSource>? trafficSource;

  TrafficSourceAttachmentArgs({
    required this.autoscalingGroupName,
    this.region,
    this.trafficSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingGroupName'] = autoscalingGroupName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final trafficSourceValue = trafficSource;
    if (trafficSourceValue != null) {
      map['trafficSource'] = Input.mapOptionalInputValue<
          TrafficSourceAttachmentTrafficSource,
          Map<String, dynamic>>(trafficSourceValue, (value) => value.toMap());
    }
    return map;
  }

  factory TrafficSourceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TrafficSourceAttachmentArgs(
      autoscalingGroupName: Input.asInput<String>(map['autoscalingGroupName']),
      region: Input.asOptionalInput<String>(map['region']),
      trafficSource:
          Input.asOptionalInput<TrafficSourceAttachmentTrafficSource>(
              map['trafficSource']),
    );
  }
}
