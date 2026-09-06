// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of the artifact signing account.
class AccountSku {
  /// Name of the SKU.
  final pulumi.Input<dynamic> name;

  /// Creates a new [AccountSku].
  /// [name] Name of the SKU.
  const AccountSku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AccountSku.fromMap(Map<String, dynamic> map) {
    return AccountSku(
      name: pulumi.Input.fromValue(map['name']),
    );
  }
}
