// ignore_for_file: unused_element, unnecessary_cast

class ContactChannelDeliveryAddress {
  /// Details to engage this contact channel. The expected format depends on the contact channel type and is described in the [`ContactChannelAddress` section of the SSM Contacts API Reference](https://docs.aws.amazon.com/incident-manager/latest/APIReference/API_SSMContacts_ContactChannelAddress.html).
  final String simpleAddress;

  ContactChannelDeliveryAddress({
    required this.simpleAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['simpleAddress'] = simpleAddress;
    return map;
  }

  factory ContactChannelDeliveryAddress.fromMap(Map<String, dynamic> map) {
    return ContactChannelDeliveryAddress(
      simpleAddress: map['simpleAddress'] as String,
    );
  }
}
