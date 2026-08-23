// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU of the artifact signing account.
class AccountSkuResponse {
  /// Name of the SKU.
  final pulumi.Input<String> name;

  /// Creates a new [AccountSkuResponse].
  /// [name] Name of the SKU.
  const AccountSkuResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory AccountSkuResponse.fromMap(Map<String, dynamic> map) {
    return AccountSkuResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
