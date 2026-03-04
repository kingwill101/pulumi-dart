// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrafficPolicyDocumentRuleItem {
  final pulumi.Input<String>? endpointReference;
  final pulumi.Input<String>? healthCheck;

  /// Creates a new [GetTrafficPolicyDocumentRuleItem].
  /// [endpointReference] Optional.
  /// [healthCheck] Optional.
  GetTrafficPolicyDocumentRuleItem({this.endpointReference, this.healthCheck});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointReference': ?endpointReference,
      'healthCheck': ?healthCheck,
    };
  }

  factory GetTrafficPolicyDocumentRuleItem.fromMap(Map<String, dynamic> map) {
    return GetTrafficPolicyDocumentRuleItem(
      endpointReference: (() {
        final guardedValue = map['endpointReference'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      healthCheck: (() {
        final guardedValue = map['healthCheck'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
