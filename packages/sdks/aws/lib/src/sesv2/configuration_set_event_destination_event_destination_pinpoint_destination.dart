// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationSetEventDestinationEventDestinationPinpointDestination {
  /// ARN of the AWS End User Messaging project to send email events to.
  final pulumi.Input<String> applicationArn;

  /// Creates a new [ConfigurationSetEventDestinationEventDestinationPinpointDestination].
  /// [applicationArn] ARN of the AWS End User Messaging project to send email events to.
  const ConfigurationSetEventDestinationEventDestinationPinpointDestination({
    required this.applicationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationArn': applicationArn,
    };
  }

  factory ConfigurationSetEventDestinationEventDestinationPinpointDestination.fromMap(Map<String, dynamic> map) {
    return ConfigurationSetEventDestinationEventDestinationPinpointDestination(
      applicationArn: pulumi.Input.fromValue(map['applicationArn'] as String),
    );
  }
}
