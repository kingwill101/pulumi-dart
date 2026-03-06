// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MultiAccountDeliveryChannelDeliveryChannelFilter {
  /// The account scopes of the delivery channel.
  final pulumi.Input<List<String>> accountScopes;
  /// An array of effective resource types for the delivery channel.
  /// - Example: ["ACS::VPC::VPC", "ACS::ECS::Instance"].
  /// - If you want to deliver items of all resource types supported by Resource Center, set this parameter to ["ALL"].
  final pulumi.Input<List<String>>? resourceTypes;

  /// Creates a new [MultiAccountDeliveryChannelDeliveryChannelFilter].
  /// [accountScopes] The account scopes of the delivery channel.
  /// [resourceTypes] An array of effective resource types for the delivery channel.
  const MultiAccountDeliveryChannelDeliveryChannelFilter({
    required this.accountScopes,
    this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountScopes': accountScopes,
      'resourceTypes': ?resourceTypes,
    };
  }

  factory MultiAccountDeliveryChannelDeliveryChannelFilter.fromMap(Map<String, dynamic> map) {
    return MultiAccountDeliveryChannelDeliveryChannelFilter(
      accountScopes: pulumi.Input.fromValue((map['accountScopes'] as List).cast<String>()),
      resourceTypes: (() { final guardedValue = map['resourceTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

