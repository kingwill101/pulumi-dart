// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'contact_channel_delivery_address.dart';

/// Input properties used for looking up and filtering ContactChannel resources.
class ContactChannelState {
  /// Whether the contact channel is activated. The contact channel must be activated to use it to engage the contact. One of `ACTIVATED` or `NOT_ACTIVATED`.
  final pulumi.Input<String>? activationStatus;
  /// Amazon Resource Name (ARN) of the contact channel.
  final pulumi.Input<String>? arn;
  /// Amazon Resource Name (ARN) of the AWS SSM Contact that the contact channel belongs to.
  final pulumi.Input<String>? contactId;
  /// Block that contains contact engagement details. See details below.
  final pulumi.Input<ContactChannelDeliveryAddress>? deliveryAddress;
  /// Name of the contact channel. Must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), hyphens (`-`), periods (`.`), and spaces.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Type of the contact channel. One of `SMS`, `VOICE` or `EMAIL`.
  final pulumi.Input<String>? type;

  /// Creates a new [ContactChannelState].
  /// [activationStatus] Whether the contact channel is activated. The contact channel must be activated to use it to engage the contact. One of `ACTIVATED` or `NOT_ACTIVATED`.
  /// [arn] Amazon Resource Name (ARN) of the contact channel.
  /// [contactId] Amazon Resource Name (ARN) of the AWS SSM Contact that the contact channel belongs to.
  /// [deliveryAddress] Block that contains contact engagement details. See details below.
  /// [name] Name of the contact channel. Must be between 1 and 255 characters, and may contain alphanumerics, underscores (`_`), hyphens (`-`), periods (`.`), and spaces.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [type] Type of the contact channel. One of `SMS`, `VOICE` or `EMAIL`.
  const ContactChannelState({
    this.activationStatus,
    this.arn,
    this.contactId,
    this.deliveryAddress,
    this.name,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationStatus': ?activationStatus,
      'arn': ?arn,
      'contactId': ?contactId,
      'deliveryAddress': ?pulumi.Input.mapOptionalInputValue<ContactChannelDeliveryAddress, Map<String, dynamic>>(deliveryAddress, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'type': ?type,
    };
  }

  factory ContactChannelState.fromMap(Map<String, dynamic> map) {
    return ContactChannelState(
      activationStatus: (() { final guardedValue = map['activationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactId: (() { final guardedValue = map['contactId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deliveryAddress: (() { final guardedValue = map['deliveryAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContactChannelDeliveryAddress.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
