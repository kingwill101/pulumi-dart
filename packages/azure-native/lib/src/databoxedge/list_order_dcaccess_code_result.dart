// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listOrderDCAccessCode.
class ListOrderDCAccessCodeResult {
  /// DCAccess Code for the Self Managed shipment.
  final String? authCode;

  /// Creates a new [ListOrderDCAccessCodeResult].
  /// [authCode] DCAccess Code for the Self Managed shipment.
  ListOrderDCAccessCodeResult({
    this.authCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authCode': ?authCode,
    };
  }

  factory ListOrderDCAccessCodeResult.fromMap(Map<String, dynamic> map) {
    return ListOrderDCAccessCodeResult(
      authCode: map['authCode'] == null ? null : map['authCode'] as String,
    );
  }
}

