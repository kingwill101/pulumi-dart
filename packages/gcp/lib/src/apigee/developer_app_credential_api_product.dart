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
    return <String, dynamic>{
      'apiproduct': ?apiproduct,
      'status': ?status,
    };
  }

  factory DeveloperAppCredentialApiProduct.fromMap(Map<String, dynamic> map) {
    return DeveloperAppCredentialApiProduct(
      apiproduct: map['apiproduct'] == null ? null : map['apiproduct'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

