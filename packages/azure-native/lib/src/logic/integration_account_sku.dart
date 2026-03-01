// ignore_for_file: unused_element, unnecessary_cast


/// The integration account sku.
class IntegrationAccountSku {
  /// The sku name.
  final String name;

  /// Creates a new [IntegrationAccountSku].
  /// [name] The sku name.
  IntegrationAccountSku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory IntegrationAccountSku.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountSku(
      name: map['name'] as String,
    );
  }
}

