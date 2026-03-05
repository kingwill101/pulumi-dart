// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_reference.dart';

/// Defines the parameters for the origin group override action.
class OriginGroupOverrideActionParameters {
  /// defines the OriginGroup that would override the DefaultOriginGroup.
  final pulumi.Input<ResourceReference> originGroup;
  /// Expected value is 'DeliveryRuleOriginGroupOverrideActionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [OriginGroupOverrideActionParameters].
  /// [originGroup] defines the OriginGroup that would override the DefaultOriginGroup.
  /// [typeName] Expected value is 'DeliveryRuleOriginGroupOverrideActionParameters'.
  OriginGroupOverrideActionParameters({
    required this.originGroup,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originGroup': pulumi.Input.mapInputValue<ResourceReference, Map<String, dynamic>>(originGroup, (value) => value.toMap()),
      'typeName': typeName,
    };
  }

  factory OriginGroupOverrideActionParameters.fromMap(Map<String, dynamic> map) {
    return OriginGroupOverrideActionParameters(
      originGroup: pulumi.Input.fromValue(ResourceReference.fromMap((map['originGroup']! as Map).cast<String, dynamic>())),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}

