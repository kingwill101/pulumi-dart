// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesInitContainerResources {
  final pulumi.Input<Map<String, String>>? limits;
  final pulumi.Input<Map<String, String>>? requests;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesInitContainerResources].
  /// [limits] Optional.
  /// [requests] Optional.
  JobDefinitionEksPropertiesPodPropertiesInitContainerResources({
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
      limits: map['limits'] == null ? null : (((map['limits'] as Map).cast<String, String>()).input()).input(),
      requests: map['requests'] == null ? null : (((map['requests'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

