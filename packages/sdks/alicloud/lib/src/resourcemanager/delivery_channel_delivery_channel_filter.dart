// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeliveryChannelDeliveryChannelFilter {
  /// An array of effective resource types for the delivery channel.
  /// - Example: ["ACS::VPC::VPC", "ACS::ECS::Instance"].
  /// - If you want to deliver items of all resource types supported by Resource Center, set this parameter to ["ALL"].
  final pulumi.Input<List<String>>? resourceTypes;

  /// Creates a new [DeliveryChannelDeliveryChannelFilter].
  /// [resourceTypes] An array of effective resource types for the delivery channel.
  DeliveryChannelDeliveryChannelFilter({this.resourceTypes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceTypes': ?resourceTypes};
  }

  factory DeliveryChannelDeliveryChannelFilter.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryChannelDeliveryChannelFilter(
      resourceTypes: (() {
        final guardedValue = map['resourceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
