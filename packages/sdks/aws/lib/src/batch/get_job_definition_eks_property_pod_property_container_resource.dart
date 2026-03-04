// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionEksPropertyPodPropertyContainerResource {
  /// The type and quantity of the resources to reserve for the container.
  final pulumi.Input<Map<String, String>> limits;

  /// The type and quantity of the resources to request for the container.
  final pulumi.Input<Map<String, String>> requests;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyContainerResource].
  /// [limits] The type and quantity of the resources to reserve for the container.
  /// [requests] The type and quantity of the resources to request for the container.
  GetJobDefinitionEksPropertyPodPropertyContainerResource({
    required this.limits,
    required this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'limits': limits, 'requests': requests};
  }

  factory GetJobDefinitionEksPropertyPodPropertyContainerResource.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionEksPropertyPodPropertyContainerResource(
      limits: pulumi.Input.fromValue(
        (map['limits'] as Map).cast<String, String>(),
      ),
      requests: pulumi.Input.fromValue(
        (map['requests'] as Map).cast<String, String>(),
      ),
    );
  }
}
