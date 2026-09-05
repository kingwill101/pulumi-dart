// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contact_channel_delivery_address.dart';

/// Result data returned by getContactChannel.
class GetContactChannelResult {
  /// Whether the contact channel is activated.
  final String? activationStatus;
  final String? arn;
  /// ARN of the AWS SSM Contact that the contact channel belongs to.
  final String? contactId;
  /// Details used to engage the contact channel.
  final List<GetContactChannelDeliveryAddress>? deliveryAddresses;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Name of the contact channel.
  final String? name;
  final String? region;
  /// Type of the contact channel.
  final String? type;

  /// Creates a new [GetContactChannelResult].
  /// [activationStatus] Whether the contact channel is activated.
  /// [arn] Optional.
  /// [contactId] ARN of the AWS SSM Contact that the contact channel belongs to.
  /// [deliveryAddresses] Details used to engage the contact channel.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the contact channel.
  /// [region] Optional.
  /// [type] Type of the contact channel.
  const GetContactChannelResult({
    this.activationStatus,
    this.arn,
    this.contactId,
    this.deliveryAddresses,
    this.id,
    this.name,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationStatus': ?activationStatus,
      'arn': ?arn,
      'contactId': ?contactId,
      'deliveryAddresses': ?(() { final guardedValue = deliveryAddresses; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetContactChannelDeliveryAddress, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'name': ?name,
      'region': ?region,
      'type': ?type,
    };
  }

  factory GetContactChannelResult.fromMap(Map<String, dynamic> map) {
    return GetContactChannelResult(
      activationStatus: (() { final guardedValue = map['activationStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contactId: (() { final guardedValue = map['contactId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deliveryAddresses: (() { final guardedValue = map['deliveryAddresses']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetContactChannelDeliveryAddress>(guardedValue, (value) => GetContactChannelDeliveryAddress.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
