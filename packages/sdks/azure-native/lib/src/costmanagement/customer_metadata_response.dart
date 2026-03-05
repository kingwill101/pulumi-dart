// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The customer billing metadata
class CustomerMetadataResponse {
  /// Customer billing account id
  final pulumi.Input<String> billingAccountId;
  /// Customer billing profile id
  final pulumi.Input<String> billingProfileId;

  /// Creates a new [CustomerMetadataResponse].
  /// [billingAccountId] Customer billing account id
  /// [billingProfileId] Customer billing profile id
  CustomerMetadataResponse({
    required this.billingAccountId,
    required this.billingProfileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'billingProfileId': billingProfileId,
    };
  }

  factory CustomerMetadataResponse.fromMap(Map<String, dynamic> map) {
    return CustomerMetadataResponse(
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      billingProfileId: pulumi.Input.fromValue(map['billingProfileId'] as String),
    );
  }
}

