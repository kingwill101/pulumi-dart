// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_source_attachment_traffic_source.dart';

/// {@template pulumi_autoscaling_traffic_source_attachment_traffic_source_attachment_args_doc}
/// The set of arguments for TrafficSourceAttachment.
/// {@endtemplate}
/// {@macro pulumi_autoscaling_traffic_source_attachment_traffic_source_attachment_args_doc}
class TrafficSourceAttachmentArgs {
  /// The name of the Auto Scaling group.
  final pulumi.Input<String> autoscalingGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The unique identifiers of a traffic sources.
  final pulumi.Input<TrafficSourceAttachmentTrafficSource>? trafficSource;

  /// Creates a new [TrafficSourceAttachmentArgs].
  /// [autoscalingGroupName] The name of the Auto Scaling group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trafficSource] The unique identifiers of a traffic sources.
  TrafficSourceAttachmentArgs({
    required String autoscalingGroupName,
    String? region,
    TrafficSourceAttachmentTrafficSource? trafficSource,
  })  : autoscalingGroupName =
            pulumi.Input.asInput<String>(autoscalingGroupName),
        region = pulumi.Input.asOptionalInput<String>(region),
        trafficSource =
            pulumi.Input.asOptionalInput<TrafficSourceAttachmentTrafficSource>(
                trafficSource);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingGroupName'] = autoscalingGroupName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final trafficSourceValue = trafficSource;
    if (trafficSourceValue != null) {
      map['trafficSource'] = pulumi.Input.mapOptionalInputValue<
          TrafficSourceAttachmentTrafficSource,
          Map<String, dynamic>>(trafficSourceValue, (value) => value.toMap());
    }
    return map;
  }

  factory TrafficSourceAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TrafficSourceAttachmentArgs(
      autoscalingGroupName: map['autoscalingGroupName'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      trafficSource: map['trafficSource'] == null
          ? null
          : TrafficSourceAttachmentTrafficSource.fromMap(
              (map['trafficSource'] as Map).cast<String, dynamic>()),
    );
  }
}
