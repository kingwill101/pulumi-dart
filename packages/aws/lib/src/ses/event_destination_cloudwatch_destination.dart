// ignore_for_file: unused_element, unnecessary_cast


class EventDestinationCloudwatchDestination {
  /// The default value for the event
  final String defaultValue;
  /// The name for the dimension
  final String dimensionName;
  /// The source for the value. May be any of `"messageTag"`, `"emailHeader"` or `"linkTag"`.
  final String valueSource;

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
      defaultValue: map['defaultValue'] as String,
      dimensionName: map['dimensionName'] as String,
      valueSource: map['valueSource'] as String,
    );
  }
}

