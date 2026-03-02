// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of the trusted signing account.
class AccountSku {
  /// Name of the SKU.
  final pulumi.Input<String> name;

  /// Creates a new [AccountSku].
  /// [name] Name of the SKU.
  AccountSku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AccountSku.fromMap(Map<String, dynamic> map) {
    return AccountSku(
      name: (map['name'] as String).input(),
    );
  }
}

