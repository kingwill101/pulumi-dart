// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_channel_delivery_address.dart';

/// {@template pulumi_ssmcontacts_contact_channel_contact_channel_args_doc}
/// The set of arguments for ContactChannel.
/// {@endtemplate}
/// {@macro pulumi_ssmcontacts_contact_channel_contact_channel_args_doc}
class ContactChannelArgs {
  /// Amazon Resource Name (ARN) of the AWS SSM Contact that the contact channel belongs to.
  final pulumi.Input<String> contactId;
  /// Block that contains contact engagement details. See details below.
  final pulumi.Input<ContactChannelDeliveryAddress> deliveryAddress;
  /// Name of the contact channel. Must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), hyphens (`-`), periods (`.`), and spaces.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of the contact channel. One of `SMS`, `VOICE` or `EMAIL`.
  final pulumi.Input<String> type;

  /// Creates a new [ContactChannelArgs].
  /// [contactId] Amazon Resource Name (ARN) of the AWS SSM Contact that the contact channel belongs to.
  /// [deliveryAddress] Block that contains contact engagement details. See details below.
  /// [name] Name of the contact channel. Must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), hyphens (`-`), periods (`.`), and spaces.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of the contact channel. One of `SMS`, `VOICE` or `EMAIL`.
  const ContactChannelArgs({
    required this.contactId,
    required this.deliveryAddress,
    this.name,
    this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactId': contactId,
      'deliveryAddress': pulumi.Input.mapInputValue<ContactChannelDeliveryAddress, Map<String, dynamic>>(deliveryAddress, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'type': type,
    };
  }

  factory ContactChannelArgs.fromMap(Map<String, dynamic> map) {
    return ContactChannelArgs(
      contactId: pulumi.Input.fromValue(map['contactId'] as String),
      deliveryAddress: pulumi.Input.fromValue(ContactChannelDeliveryAddress.fromMap((map['deliveryAddress']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

