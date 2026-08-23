// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference_response.dart';

/// Defines the parameters for the origin group override action.
class OriginGroupOverrideActionParametersResponse {
  /// defines the OriginGroup that would override the DefaultOriginGroup.
  final pulumi.Input<ResourceReferenceResponse> originGroup;
  /// Expected value is 'DeliveryRuleOriginGroupOverrideActionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [OriginGroupOverrideActionParametersResponse].
  /// [originGroup] defines the OriginGroup that would override the DefaultOriginGroup.
  /// [typeName] Expected value is 'DeliveryRuleOriginGroupOverrideActionParameters'.
  const OriginGroupOverrideActionParametersResponse({
    required this.originGroup,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originGroup': pulumi.Input.mapInputValue<ResourceReferenceResponse, Map<String, dynamic>>(originGroup, (value) => value.toMap()),
      'typeName': typeName,
    };
  }

  factory OriginGroupOverrideActionParametersResponse.fromMap(Map<String, dynamic> map) {
    return OriginGroupOverrideActionParametersResponse(
      originGroup: pulumi.Input.fromValue(ResourceReferenceResponse.fromMap((map['originGroup']! as Map).cast<String, dynamic>())),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}
