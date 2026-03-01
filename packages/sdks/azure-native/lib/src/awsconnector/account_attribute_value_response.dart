// ignore_for_file: unused_element, unnecessary_cast


/// Definition of AccountAttributeValue
class AccountAttributeValueResponse {
  /// <p>The value of the attribute.</p>
  final String? attributeValue;

  /// Creates a new [AccountAttributeValueResponse].
  /// [attributeValue] <p>The value of the attribute.</p>
  AccountAttributeValueResponse({
    this.attributeValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeValue': ?attributeValue,
    };
  }

  factory AccountAttributeValueResponse.fromMap(Map<String, dynamic> map) {
    return AccountAttributeValueResponse(
      attributeValue: map['attributeValue'] == null ? null : map['attributeValue'] as String,
    );
  }
}

