// ignore_for_file: unused_element, unnecessary_cast


/// Definition of IPSetReference
class IPSetReferenceResponse {
  /// A resource ARN.
  final String? referenceArn;

  /// Creates a new [IPSetReferenceResponse].
  /// [referenceArn] A resource ARN.
  IPSetReferenceResponse({
    this.referenceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceArn': ?referenceArn,
    };
  }

  factory IPSetReferenceResponse.fromMap(Map<String, dynamic> map) {
    return IPSetReferenceResponse(
      referenceArn: map['referenceArn'] == null ? null : map['referenceArn'] as String,
    );
  }
}

