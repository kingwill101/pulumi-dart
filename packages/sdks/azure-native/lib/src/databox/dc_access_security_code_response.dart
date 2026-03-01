// ignore_for_file: unused_element, unnecessary_cast


/// Dc access security code
class DcAccessSecurityCodeResponse {
  /// Forward Dc access security code.
  final String? forwardDCAccessCode;
  /// Reverse Dc access security code.
  final String? reverseDCAccessCode;

  /// Creates a new [DcAccessSecurityCodeResponse].
  /// [forwardDCAccessCode] Forward Dc access security code.
  /// [reverseDCAccessCode] Reverse Dc access security code.
  DcAccessSecurityCodeResponse({
    this.forwardDCAccessCode,
    this.reverseDCAccessCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardDCAccessCode': ?forwardDCAccessCode,
      'reverseDCAccessCode': ?reverseDCAccessCode,
    };
  }

  factory DcAccessSecurityCodeResponse.fromMap(Map<String, dynamic> map) {
    return DcAccessSecurityCodeResponse(
      forwardDCAccessCode: map['forwardDCAccessCode'] == null ? null : map['forwardDCAccessCode'] as String,
      reverseDCAccessCode: map['reverseDCAccessCode'] == null ? null : map['reverseDCAccessCode'] as String,
    );
  }
}

