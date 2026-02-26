// ignore_for_file: unused_element, unnecessary_cast

class ConfigurationSetEventDestinationEventDestinationPinpointDestination {
  final String applicationArn;

  ConfigurationSetEventDestinationEventDestinationPinpointDestination({
    required this.applicationArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationArn'] = applicationArn;
    return map;
  }

  factory ConfigurationSetEventDestinationEventDestinationPinpointDestination.fromMap(
      Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationPinpointDestination(
      applicationArn: map['applicationArn'] as String,
    );
  }
}
