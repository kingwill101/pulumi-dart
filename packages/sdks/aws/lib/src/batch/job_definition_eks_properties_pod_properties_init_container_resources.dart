// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesInitContainerResources {
  /// Type and quantity of the resources to reserve for the container. The values vary based on the name that's specified. Limits must be equal to or greater than requests.
  final pulumi.Input<Map<String, String>?>? limits;
  /// Type and quantity of the resources to request for the container. The values vary based on the name that's specified.
  final pulumi.Input<Map<String, String>?>? requests;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesInitContainerResources].
  /// [limits] Type and quantity of the resources to reserve for the container. The values vary based on the name that's specified. Limits must be equal to or greater than requests.
  /// [requests] Type and quantity of the resources to request for the container. The values vary based on the name that's specified.
  const JobDefinitionEksPropertiesPodPropertiesInitContainerResources({
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits,
      'requests': ?requests,
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesInitContainerResources.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesInitContainerResources(
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
