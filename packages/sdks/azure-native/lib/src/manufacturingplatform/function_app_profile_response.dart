// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to Azure Function App Resource
class FunctionAppProfileResponse {
  /// Resource Id of Azure Function App Resource
  final pulumi.Input<String> id;

  /// Creates a new [FunctionAppProfileResponse].
  /// [id] Resource Id of Azure Function App Resource
  FunctionAppProfileResponse({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory FunctionAppProfileResponse.fromMap(Map<String, dynamic> map) {
    return FunctionAppProfileResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
