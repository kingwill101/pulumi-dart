// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data Lake Store trusted identity provider information.
class TrustedIdProviderResponse {
  /// The resource identifier.
  final pulumi.Input<String> id;
  /// The URL of this trusted identity provider.
  final pulumi.Input<String> idProvider;
  /// The resource name.
  final pulumi.Input<String> name;
  /// The resource type.
  final pulumi.Input<String> type;

  /// Creates a new [TrustedIdProviderResponse].
  /// [id] The resource identifier.
  /// [idProvider] The URL of this trusted identity provider.
  /// [name] The resource name.
  /// [type] The resource type.
  const TrustedIdProviderResponse({
    required this.id,
    required this.idProvider,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'idProvider': idProvider,
      'name': name,
      'type': type,
    };
  }

  factory TrustedIdProviderResponse.fromMap(Map<String, dynamic> map) {
    return TrustedIdProviderResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      idProvider: pulumi.Input.fromValue(map['idProvider'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
