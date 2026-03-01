// ignore_for_file: unused_element, unnecessary_cast

class GetContactChannelDeliveryAddress {
  final String simpleAddress;

  /// Creates a new [GetContactChannelDeliveryAddress].
  /// [simpleAddress] Required.
  GetContactChannelDeliveryAddress({required this.simpleAddress});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'simpleAddress': simpleAddress};
  }

  factory GetContactChannelDeliveryAddress.fromMap(Map<String, dynamic> map) {
    return GetContactChannelDeliveryAddress(
      simpleAddress: map['simpleAddress'] as String,
    );
  }
}
