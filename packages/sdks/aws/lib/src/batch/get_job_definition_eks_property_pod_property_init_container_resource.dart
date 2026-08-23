// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionEksPropertyPodPropertyInitContainerResource {
  /// Type and quantity of the resources to reserve for the container.
  final pulumi.Input<Map<String, String>> limits;
  /// Type and quantity of the resources to request for the container.
  final pulumi.Input<Map<String, String>> requests;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyInitContainerResource].
  /// [limits] Type and quantity of the resources to reserve for the container.
  /// [requests] Type and quantity of the resources to request for the container.
  const GetJobDefinitionEksPropertyPodPropertyInitContainerResource({
    required this.limits,
    required this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': limits,
      'requests': requests,
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyInitContainerResource.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyInitContainerResource(
      limits: pulumi.Input.fromValue((map['limits'] as Map).cast<String, String>()),
      requests: pulumi.Input.fromValue((map['requests'] as Map).cast<String, String>()),
    );
  }
}
