// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogDeliveryDestinationDeliveryDestinationConfiguration {
  /// The ARN of the AWS destination that this delivery destination represents. Required when `delivery_destination_configuration` is specified.
  final pulumi.Input<String>? destinationResourceArn;

  /// Creates a new [LogDeliveryDestinationDeliveryDestinationConfiguration].
  /// [destinationResourceArn] The ARN of the AWS destination that this delivery destination represents. Required when `delivery_destination_configuration` is specified.
  LogDeliveryDestinationDeliveryDestinationConfiguration({
    this.destinationResourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationResourceArn': ?destinationResourceArn,
    };
  }

  factory LogDeliveryDestinationDeliveryDestinationConfiguration.fromMap(Map<String, dynamic> map) {
    return LogDeliveryDestinationDeliveryDestinationConfiguration(
      destinationResourceArn: map['destinationResourceArn'] == null ? null : (map['destinationResourceArn'] as String).input(),
    );
  }
}

