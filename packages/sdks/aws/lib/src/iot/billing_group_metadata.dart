// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BillingGroupMetadata {
  final pulumi.Input<String> creationDate;

  /// Creates a new [BillingGroupMetadata].
  /// [creationDate] Required.
  BillingGroupMetadata({
    required this.creationDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationDate': creationDate,
    };
  }

  factory BillingGroupMetadata.fromMap(Map<String, dynamic> map) {
    return BillingGroupMetadata(
      creationDate: pulumi.Input.fromValue(map['creationDate'] as String),
    );
  }
}

