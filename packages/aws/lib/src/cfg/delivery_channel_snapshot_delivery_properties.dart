// ignore_for_file: unused_element, unnecessary_cast

class DeliveryChannelSnapshotDeliveryProperties {
  /// The frequency with which AWS Config recurringly delivers configuration snapshotsE.g., `One_Hour` or `Three_Hours`. Valid values are listed [here](https://docs.aws.amazon.com/config/latest/APIReference/API_ConfigSnapshotDeliveryProperties.html#API_ConfigSnapshotDeliveryProperties_Contents).
  final String? deliveryFrequency;

  /// Creates a new [DeliveryChannelSnapshotDeliveryProperties].
  /// [deliveryFrequency] The frequency with which AWS Config recurringly delivers configuration snapshotsE.g., `One_Hour` or `Three_Hours`. Valid values are listed [here](https://docs.aws.amazon.com/config/latest/APIReference/API_ConfigSnapshotDeliveryProperties.html#API_ConfigSnapshotDeliveryProperties_Contents).
  DeliveryChannelSnapshotDeliveryProperties({this.deliveryFrequency});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'deliveryFrequency': ?deliveryFrequency};
  }

  factory DeliveryChannelSnapshotDeliveryProperties.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryChannelSnapshotDeliveryProperties(
      deliveryFrequency: map['deliveryFrequency'] == null
          ? null
          : map['deliveryFrequency'] as String,
    );
  }
}
