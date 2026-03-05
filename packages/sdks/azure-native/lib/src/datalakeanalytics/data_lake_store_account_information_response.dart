// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data Lake Store account information.
class DataLakeStoreAccountInformationResponse {
  /// The resource identifier.
  final pulumi.Input<String> id;
  /// The resource name.
  final pulumi.Input<String> name;
  /// The optional suffix for the Data Lake Store account.
  final pulumi.Input<String> suffix;
  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [DataLakeStoreAccountInformationResponse].
  /// [id] The resource identifier.
  /// [name] The resource name.
  /// [suffix] The optional suffix for the Data Lake Store account.
  /// [type] The resource type.
  DataLakeStoreAccountInformationResponse({
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

  factory DataLakeStoreAccountInformationResponse.fromMap(Map<String, dynamic> map) {
    return DataLakeStoreAccountInformationResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      suffix: pulumi.Input.fromValue(map['suffix'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

