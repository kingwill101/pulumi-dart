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
  ContactChannelArgs({
    required pulumi.Output<String> contactId,
    required pulumi.Output<ContactChannelDeliveryAddress> deliveryAddress,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<String> type,
  }) :
      contactId = pulumi.Input.asInput<String>(contactId),
      deliveryAddress = pulumi.Input.asInput<ContactChannelDeliveryAddress>(deliveryAddress),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      type = pulumi.Input.asInput<String>(type);

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
      contactId: pulumi.Output.create<String>(map['contactId'] as String),
      deliveryAddress: pulumi.Output.create<ContactChannelDeliveryAddress>(ContactChannelDeliveryAddress.fromMap((map['deliveryAddress'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

