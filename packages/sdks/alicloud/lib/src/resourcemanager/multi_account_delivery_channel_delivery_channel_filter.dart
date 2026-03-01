// ignore_for_file: unused_element, unnecessary_cast


class MultiAccountDeliveryChannelDeliveryChannelFilter {
  /// The account scopes of the delivery channel.
  final List<String> accountScopes;
  /// An array of effective resource types for the delivery channel.
  /// - Example: ["ACS::VPC::VPC", "ACS::ECS::Instance"].
  /// - If you want to deliver items of all resource types supported by Resource Center, set this parameter to ["ALL"].
  final List<String>? resourceTypes;

  /// Creates a new [MultiAccountDeliveryChannelDeliveryChannelFilter].
  /// [accountScopes] The account scopes of the delivery channel.
  /// [resourceTypes] An array of effective resource types for the delivery channel.
  MultiAccountDeliveryChannelDeliveryChannelFilter({
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
      accountScopes: (map['accountScopes'] as List).cast<String>(),
      resourceTypes: map['resourceTypes'] == null ? null : (map['resourceTypes'] as List).cast<String>(),
    );
  }
}

