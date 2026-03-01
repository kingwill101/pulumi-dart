// ignore_for_file: unused_element, unnecessary_cast

import 'resource_reference_response.dart';

/// Defines the parameters for the origin group override action.
class OriginGroupOverrideActionParametersResponse {
  /// defines the OriginGroup that would override the DefaultOriginGroup.
  final ResourceReferenceResponse originGroup;
  /// Expected value is 'DeliveryRuleOriginGroupOverrideActionParameters'.
  final String typeName;

  /// Creates a new [OriginGroupOverrideActionParametersResponse].
  /// [originGroup] defines the OriginGroup that would override the DefaultOriginGroup.
  /// [typeName] Expected value is 'DeliveryRuleOriginGroupOverrideActionParameters'.
  OriginGroupOverrideActionParametersResponse({
    required this.originGroup,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originGroup': originGroup.toMap(),
      'typeName': typeName,
    };
  }

  factory OriginGroupOverrideActionParametersResponse.fromMap(Map<String, dynamic> map) {
    return OriginGroupOverrideActionParametersResponse(
      originGroup: ResourceReferenceResponse.fromMap((map['originGroup'] as Map).cast<String, dynamic>()),
      typeName: map['typeName'] as String,
    );
  }
}

