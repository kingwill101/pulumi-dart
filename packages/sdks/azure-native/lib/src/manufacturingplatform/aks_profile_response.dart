// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties related to Aks Resource
class AksProfileResponse {
  /// Resource Id of AKS Resource
  final pulumi.Input<String> id;

  /// Creates a new [AksProfileResponse].
  /// [id] Resource Id of AKS Resource
  AksProfileResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory AksProfileResponse.fromMap(Map<String, dynamic> map) {
    return AksProfileResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

