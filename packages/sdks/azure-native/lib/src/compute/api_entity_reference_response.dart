// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The API entity reference.
class ApiEntityReferenceResponse {
  /// The ARM resource id in the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...
  final pulumi.Input<String>? id;

  /// Creates a new [ApiEntityReferenceResponse].
  /// [id] The ARM resource id in the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/...
  ApiEntityReferenceResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory ApiEntityReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ApiEntityReferenceResponse(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

