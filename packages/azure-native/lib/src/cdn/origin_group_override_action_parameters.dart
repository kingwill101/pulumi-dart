// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference.dart';

/// Defines the parameters for the origin group override action.
class OriginGroupOverrideActionParameters {
  /// defines the OriginGroup that would override the DefaultOriginGroup.
  final ResourceReference originGroup;
  /// Expected value is 'DeliveryRuleOriginGroupOverrideActionParameters'.
  final String typeName;

  /// Creates a new [OriginGroupOverrideActionParameters].
  /// [originGroup] defines the OriginGroup that would override the DefaultOriginGroup.
  /// [typeName] Expected value is 'DeliveryRuleOriginGroupOverrideActionParameters'.
  OriginGroupOverrideActionParameters({
    required this.originGroup,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originGroup': originGroup.toMap(),
      'typeName': typeName,
    };
  }

  factory OriginGroupOverrideActionParameters.fromMap(Map<String, dynamic> map) {
    return OriginGroupOverrideActionParameters(
      originGroup: ResourceReference.fromMap((map['originGroup'] as Map).cast<String, dynamic>()),
      typeName: map['typeName'] as String,
    );
  }
}

