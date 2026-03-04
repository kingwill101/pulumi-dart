// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Descriptor for what needs to be reviewed
class AccessReviewReviewerResponse {
  /// The id of the reviewer(user/servicePrincipal)
  final pulumi.Input<String>? principalId;

  /// The identity type : user/servicePrincipal
  final pulumi.Input<String> principalType;

  /// Creates a new [AccessReviewReviewerResponse].
  /// [principalId] The id of the reviewer(user/servicePrincipal)
  /// [principalType] The identity type : user/servicePrincipal
  AccessReviewReviewerResponse({this.principalId, required this.principalType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'principalType': principalType,
    };
  }

  factory AccessReviewReviewerResponse.fromMap(Map<String, dynamic> map) {
    return AccessReviewReviewerResponse(
      principalId: (() {
        final guardedValue = map['principalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principalType: pulumi.Input.fromValue(map['principalType'] as String),
    );
  }
}
