// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogDeliveryDestinationDeliveryDestinationConfiguration {
  /// The ARN of the AWS destination that this delivery destination represents. Required when `delivery_destination_configuration` is specified.
  final pulumi.Input<String>? destinationResourceArn;

  /// Creates a new [LogDeliveryDestinationDeliveryDestinationConfiguration].
  /// [destinationResourceArn] The ARN of the AWS destination that this delivery destination represents. Required when `delivery_destination_configuration` is specified.
  const LogDeliveryDestinationDeliveryDestinationConfiguration({
    this.destinationResourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationResourceArn': ?destinationResourceArn,
    };
  }

  factory LogDeliveryDestinationDeliveryDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return LogDeliveryDestinationDeliveryDestinationConfiguration(
      destinationResourceArn: (() { final guardedValue = map['destinationResourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

