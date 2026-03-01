// ignore_for_file: unused_element, unnecessary_cast


/// Validation for inquired protectable items under a given container.
class InquiryValidation {
  /// Status for the Inquiry Validation.
  final String? status;

  /// Creates a new [InquiryValidation].
  /// [status] Status for the Inquiry Validation.
  InquiryValidation({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory InquiryValidation.fromMap(Map<String, dynamic> map) {
    return InquiryValidation(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

