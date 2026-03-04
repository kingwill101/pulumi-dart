// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'traffic_source_attachment_traffic_source.dart';

/// Input properties used for looking up and filtering TrafficSourceAttachment resources.
class TrafficSourceAttachmentState {
  /// The name of the Auto Scaling group.
  final pulumi.Input<String>? autoscalingGroupName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The unique identifiers of a traffic sources.
  final pulumi.Input<TrafficSourceAttachmentTrafficSource>? trafficSource;

  /// Creates a new [TrafficSourceAttachmentState].
  /// [autoscalingGroupName] The name of the Auto Scaling group.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trafficSource] The unique identifiers of a traffic sources.
  TrafficSourceAttachmentState({
    this.autoscalingGroupName,
    this.region,
    this.trafficSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingGroupName': ?autoscalingGroupName,
      'region': ?region,
      'trafficSource':
          ?pulumi.Input.mapOptionalInputValue<
            TrafficSourceAttachmentTrafficSource,
            Map<String, dynamic>
          >(trafficSource, (value) => value.toMap()),
    };
  }

  factory TrafficSourceAttachmentState.fromMap(Map<String, dynamic> map) {
    return TrafficSourceAttachmentState(
      autoscalingGroupName: (() {
        final guardedValue = map['autoscalingGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trafficSource: (() {
        final guardedValue = map['trafficSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          TrafficSourceAttachmentTrafficSource.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
