// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContactChannelDeliveryAddress {
  final pulumi.Input<String> simpleAddress;

  /// Creates a new [GetContactChannelDeliveryAddress].
  /// [simpleAddress] Required.
  GetContactChannelDeliveryAddress({
    required this.simpleAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'simpleAddress': simpleAddress,
    };
  }

  factory GetContactChannelDeliveryAddress.fromMap(Map<String, dynamic> map) {
    return GetContactChannelDeliveryAddress(
      simpleAddress: (map['simpleAddress'] as String).input(),
    );
  }
}

