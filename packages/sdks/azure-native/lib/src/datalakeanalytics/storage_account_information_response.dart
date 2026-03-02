// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Storage account information.
class StorageAccountInformationResponse {
  /// The resource identifier.
  final pulumi.Input<String> id;
  /// The resource name.
  final pulumi.Input<String> name;
  /// The optional suffix for the storage account.
  final pulumi.Input<String> suffix;
  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [StorageAccountInformationResponse].
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [suffix] The optional suffix for the storage account.
  /// [type] The resource type.
  StorageAccountInformationResponse({
    required this.id,
    required this.name,
    required this.suffix,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'suffix': suffix,
      'type': type,
    };
  }

  factory StorageAccountInformationResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountInformationResponse(
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      suffix: (map['suffix'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

