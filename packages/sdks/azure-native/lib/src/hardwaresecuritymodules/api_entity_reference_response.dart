// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The API entity reference.
class ApiEntityReferenceResponse {
  /// The Azure resource id in the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ApiEntityReferenceResponse].
  /// [resourceId] The Azure resource id in the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...
  ApiEntityReferenceResponse({
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceId': ?resourceId,
    };
  }

  factory ApiEntityReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ApiEntityReferenceResponse(
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

