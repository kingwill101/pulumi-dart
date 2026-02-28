// ignore_for_file: unused_element, unnecessary_cast

class LogDeliveryDestinationDeliveryDestinationConfiguration {
  /// The ARN of the AWS destination that this delivery destination represents. Required when `delivery_destination_configuration` is specified.
  final String? destinationResourceArn;

  /// Creates a new [LogDeliveryDestinationDeliveryDestinationConfiguration].
  /// [destinationResourceArn] The ARN of the AWS destination that this delivery destination represents. Required when `delivery_destination_configuration` is specified.
  LogDeliveryDestinationDeliveryDestinationConfiguration({
    this.destinationResourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationResourceArnValue = destinationResourceArn;
    if (destinationResourceArnValue != null) {
      map['destinationResourceArn'] = destinationResourceArnValue;
    }
    return map;
  }

  factory LogDeliveryDestinationDeliveryDestinationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return LogDeliveryDestinationDeliveryDestinationConfiguration(
      destinationResourceArn: map['destinationResourceArn'] == null
          ? null
          : map['destinationResourceArn'] as String,
    );
  }
}
