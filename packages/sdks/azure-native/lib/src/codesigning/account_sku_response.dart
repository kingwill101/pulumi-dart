// ignore_for_file: unused_element, unnecessary_cast


/// SKU of the trusted signing account.
class AccountSkuResponse {
  /// Name of the SKU.
  final String name;

  /// Creates a new [AccountSkuResponse].
  /// [name] Name of the SKU.
  AccountSkuResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AccountSkuResponse.fromMap(Map<String, dynamic> map) {
    return AccountSkuResponse(
      name: map['name'] as String,
    );
  }
}

