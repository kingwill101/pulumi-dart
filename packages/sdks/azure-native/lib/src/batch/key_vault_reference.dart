// ignore_for_file: unused_element, unnecessary_cast


/// Identifies the Azure key vault associated with a Batch account.
class KeyVaultReference {
  /// The resource ID of the Azure key vault associated with the Batch account.
  final String id;
  /// The URL of the Azure key vault associated with the Batch account.
  final String url;

  /// Creates a new [KeyVaultReference].
  /// [id] The resource ID of the Azure key vault associated with the Batch account.
  /// [url] The URL of the Azure key vault associated with the Batch account.
  KeyVaultReference({
    required this.id,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'url': url,
    };
  }

  factory KeyVaultReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultReference(
      id: map['id'] as String,
      url: map['url'] as String,
    );
  }
}

