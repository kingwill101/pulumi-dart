// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EventDestinationCloudwatchDestination {
  /// The default value for the event
  final pulumi.Input<String> defaultValue;
  /// The name for the dimension
  final pulumi.Input<String> dimensionName;
  /// The source for the value. May be any of `"messageTag"`, `"emailHeader"` or `"linkTag"`.
  final pulumi.Input<String> valueSource;

  /// Creates a new [EventDestinationCloudwatchDestination].
  /// [defaultValue] The default value for the event
  /// [dimensionName] The name for the dimension
  /// [valueSource] The source for the value. May be any of `"messageTag"`, `"emailHeader"` or `"linkTag"`.
  EventDestinationCloudwatchDestination({
    required this.defaultValue,
    required this.dimensionName,
    required this.valueSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': defaultValue,
      'dimensionName': dimensionName,
      'valueSource': valueSource,
    };
  }

  factory EventDestinationCloudwatchDestination.fromMap(Map<String, dynamic> map) {
    return EventDestinationCloudwatchDestination(
      defaultValue: pulumi.Input.fromValue(map['defaultValue'] as String),
      dimensionName: pulumi.Input.fromValue(map['dimensionName'] as String),
      valueSource: pulumi.Input.fromValue(map['valueSource'] as String),
    );
  }
}

