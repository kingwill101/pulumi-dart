// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContactChannelDeliveryAddress {
  /// Details to engage this contact channel. The expected format depends on the contact channel type and is described in the [`ContactChannelAddress` section of the SSM Contacts API Reference](https://docs.aws.amazon.com/incident-manager/latest/APIReference/API_SSMContacts_ContactChannelAddress.html).
  final pulumi.Input<String> simpleAddress;

  /// Creates a new [ContactChannelDeliveryAddress].
  /// [simpleAddress] Details to engage this contact channel. The expected format depends on the contact channel type and is described in the [`ContactChannelAddress` section of the SSM Contacts API Reference](https://docs.aws.amazon.com/incident-manager/latest/APIReference/API_SSMContacts_ContactChannelAddress.html).
  const ContactChannelDeliveryAddress({
    required this.simpleAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleAddress': simpleAddress,
    };
  }

  factory ContactChannelDeliveryAddress.fromMap(Map<String, dynamic> map) {
    return ContactChannelDeliveryAddress(
      simpleAddress: pulumi.Input.fromValue(map['simpleAddress'] as String),
    );
  }
}
