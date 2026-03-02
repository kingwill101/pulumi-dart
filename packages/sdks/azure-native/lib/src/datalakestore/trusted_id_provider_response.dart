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
  TrustedIdProviderResponse({
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
      id: (map['id'] as String).input(),
      idProvider: (map['idProvider'] as String).input(),
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

