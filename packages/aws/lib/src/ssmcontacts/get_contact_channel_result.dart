// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_contact_channel_delivery_address.dart';

/// Result data returned by getContactChannel.
class GetContactChannelResult {
  /// Whether the contact channel is activated.
  final String activationStatus;
  final String arn;

  /// Amazon Resource Name (ARN) of the AWS SSM Contact that the contact channel belongs to.
  final String contactId;

  /// Details used to engage the contact channel.
  final List<GetContactChannelDeliveryAddress> deliveryAddresses;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Name of the contact channel.
  final String name;
  final String region;

  /// Type of the contact channel.
  final String type;

  /// Creates a new [GetContactChannelResult].
  /// [activationStatus] Whether the contact channel is activated.
  /// [arn] Required.
  /// [contactId] Amazon Resource Name (ARN) of the AWS SSM Contact that the contact channel belongs to.
  /// [deliveryAddresses] Details used to engage the contact channel.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Name of the contact channel.
  /// [region] Required.
  /// [type] Type of the contact channel.
  GetContactChannelResult({
    required this.activationStatus,
    required this.arn,
    required this.contactId,
    required this.deliveryAddresses,
    required this.id,
    required this.name,
    required this.region,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activationStatus'] = activationStatus;
    map['arn'] = arn;
    map['contactId'] = contactId;
    map['deliveryAddresses'] = pulumi.Input.encodeList<
        GetContactChannelDeliveryAddress,
        Map<String, dynamic>>(deliveryAddresses, (value) => value.toMap());
    map['id'] = id;
    map['name'] = name;
    map['region'] = region;
    map['type'] = type;
    return map;
  }

  factory GetContactChannelResult.fromMap(Map<String, dynamic> map) {
    return GetContactChannelResult(
      activationStatus: map['activationStatus'] as String,
      arn: map['arn'] as String,
      contactId: map['contactId'] as String,
      deliveryAddresses:
          pulumi.Input.decodeList<GetContactChannelDeliveryAddress>(
              map['deliveryAddresses'],
              (value) => GetContactChannelDeliveryAddress.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      type: map['type'] as String,
    );
  }
}
