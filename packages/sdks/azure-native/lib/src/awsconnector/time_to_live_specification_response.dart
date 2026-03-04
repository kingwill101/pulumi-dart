// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TimeToLiveSpecification
class TimeToLiveSpecificationResponse {
  /// The name of the TTL attribute used to store the expiration time for items in the table.   +  The ``AttributeName`` property is required when enabling the TTL, or when TTL is already enabled.  +  To update this property, you must first disable TTL and then enable TTL with the new attribute name.
  final pulumi.Input<String>? attributeName;

  /// Indicates whether TTL is to be enabled (true) or disabled (false) on the table.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [TimeToLiveSpecificationResponse].
  /// [attributeName] The name of the TTL attribute used to store the expiration time for items in the table.   +  The ``AttributeName`` property is required when enabling the TTL, or when TTL is already enabled.  +  To update this property, you must first disable TTL and then enable TTL with the new attribute name.
  /// [enabled] Indicates whether TTL is to be enabled (true) or disabled (false) on the table.
  TimeToLiveSpecificationResponse({this.attributeName, this.enabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': ?attributeName,
      'enabled': ?enabled,
    };
  }

  factory TimeToLiveSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return TimeToLiveSpecificationResponse(
      attributeName: (() {
        final guardedValue = map['attributeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
