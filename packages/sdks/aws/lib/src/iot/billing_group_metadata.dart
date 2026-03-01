// ignore_for_file: unused_element, unnecessary_cast


class BillingGroupMetadata {
  final String creationDate;

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
      creationDate: map['creationDate'] as String,
    );
  }
}

