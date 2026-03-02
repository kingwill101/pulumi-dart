// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an application gateway for containers reference.
class ApplicationGatewayForContainersReferenceDefinitionResponse {
  /// Resource Id of the application gateway for containers.
  final pulumi.Input<String> id;

  /// Creates a new [ApplicationGatewayForContainersReferenceDefinitionResponse].
  /// [id] Resource Id of the application gateway for containers.
  ApplicationGatewayForContainersReferenceDefinitionResponse({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory ApplicationGatewayForContainersReferenceDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayForContainersReferenceDefinitionResponse(
      id: (map['id'] as String).input(),
    );
  }
}

