// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../contact_channel_delivery_address/contact_channel_delivery_address.dart';

/// The set of arguments for ContactChannel.
class ContactChannelArgs {
  /// Amazon Resource Name (ARN) of the AWS SSM Contact that the contact channel belongs to.
  final Input<String> contactId;

  /// Block that contains contact engagement details. See details below.
  final Input<ContactChannelDeliveryAddress> deliveryAddress;

  /// Name of the contact channel. Must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), hyphens (`-`), periods (`.`), and spaces.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Type of the contact channel. One of `SMS`, `VOICE` or `EMAIL`.
  final Input<String> type;

  ContactChannelArgs({
    required this.contactId,
    required this.deliveryAddress,
    this.name,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contactId'] = contactId;
    map['deliveryAddress'] = Input.mapInputValue<ContactChannelDeliveryAddress,
        Map<String, dynamic>>(deliveryAddress, (value) => value.toMap());
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['type'] = type;
    return map;
  }

  factory ContactChannelArgs.fromMap(Map<String, dynamic> map) {
    return ContactChannelArgs(
      contactId: Input.asInput<String>(map['contactId']),
      deliveryAddress:
          Input.asInput<ContactChannelDeliveryAddress>(map['deliveryAddress']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      type: Input.asInput<String>(map['type']),
    );
  }
}
