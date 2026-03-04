// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identifies the Azure key vault associated with a Batch account.
class KeyVaultReference {
  /// The resource ID of the Azure key vault associated with the Batch account.
  final pulumi.Input<String> id;

  /// The URL of the Azure key vault associated with the Batch account.
  final pulumi.Input<String> url;

  /// Creates a new [KeyVaultReference].
  /// [id] The resource ID of the Azure key vault associated with the Batch account.
  /// [url] The URL of the Azure key vault associated with the Batch account.
  KeyVaultReference({required this.id, required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'url': url};
  }

  factory KeyVaultReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultReference(
      id: pulumi.Input.fromValue(map['id'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
