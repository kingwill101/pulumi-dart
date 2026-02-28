// ignore_for_file: unused_element, unnecessary_cast

class DeveloperAppCredentialApiProduct {
  /// (Output)
  /// Name of the API product.
  final String? apiproduct;

  /// Status of the credential. Valid values include approved or revoked.
  final String? status;

  /// Creates a new [DeveloperAppCredentialApiProduct].
  /// [apiproduct] (Output)
  /// [status] Status of the credential. Valid values include approved or revoked.
  DeveloperAppCredentialApiProduct({
    this.apiproduct,
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final apiproductValue = apiproduct;
    if (apiproductValue != null) {
      map['apiproduct'] = apiproductValue;
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory DeveloperAppCredentialApiProduct.fromMap(Map<String, dynamic> map) {
    return DeveloperAppCredentialApiProduct(
      apiproduct:
          map['apiproduct'] == null ? null : map['apiproduct'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
