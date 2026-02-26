// ignore_for_file: unused_element, unnecessary_cast

class LogDeliveryDestinationDeliveryDestinationConfiguration {
  /// The ARN of the AWS destination that this delivery destination represents. Required when <span pulumi-lang-nodejs="`deliveryDestinationConfiguration`" pulumi-lang-dotnet="`DeliveryDestinationConfiguration`" pulumi-lang-go="`deliveryDestinationConfiguration`" pulumi-lang-python="`delivery_destination_configuration`" pulumi-lang-yaml="`deliveryDestinationConfiguration`" pulumi-lang-java="`deliveryDestinationConfiguration`">`delivery_destination_configuration`</span> is specified.
  final String? destinationResourceArn;

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
