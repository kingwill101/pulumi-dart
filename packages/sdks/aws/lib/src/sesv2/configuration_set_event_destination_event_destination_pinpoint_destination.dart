// ignore_for_file: unused_element, unnecessary_cast


class ConfigurationSetEventDestinationEventDestinationPinpointDestination {
  final String applicationArn;

  /// Creates a new [ConfigurationSetEventDestinationEventDestinationPinpointDestination].
  /// [applicationArn] Required.
  ConfigurationSetEventDestinationEventDestinationPinpointDestination({
    required this.applicationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
    };
  }

  factory ConfigurationSetEventDestinationEventDestinationPinpointDestination.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationPinpointDestination(
      applicationArn: map['applicationArn'] as String,
    );
  }
}

