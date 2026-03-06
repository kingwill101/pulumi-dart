// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The integration account sku.
class IntegrationAccountSku {
  /// The sku name.
  final pulumi.Input<String> name;

  /// Creates a new [IntegrationAccountSku].
  /// [name] The sku name.
  const IntegrationAccountSku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory IntegrationAccountSku.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountSku(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

