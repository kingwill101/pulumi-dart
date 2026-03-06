// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The customer billing metadata
class CustomerMetadata {
  /// Customer billing account id
  final pulumi.Input<String> billingAccountId;
  /// Customer billing profile id
  final pulumi.Input<String> billingProfileId;

  /// Creates a new [CustomerMetadata].
  /// [billingAccountId] Customer billing account id
  /// [billingProfileId] Customer billing profile id
  const CustomerMetadata({
    required this.billingAccountId,
    required this.billingProfileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'billingProfileId': billingProfileId,
    };
  }

  factory CustomerMetadata.fromMap(Map<String, dynamic> map) {
    return CustomerMetadata(
      billingAccountId: pulumi.Input.fromValue(map['billingAccountId'] as String),
      billingProfileId: pulumi.Input.fromValue(map['billingProfileId'] as String),
    );
  }
}

