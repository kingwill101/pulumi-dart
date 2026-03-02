// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesContainerResources {
  final pulumi.Input<Map<String, String>>? limits;
  final pulumi.Input<Map<String, String>>? requests;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesContainerResources].
  /// [limits] Optional.
  /// [requests] Optional.
  JobDefinitionEksPropertiesPodPropertiesContainerResources({
    this.limits,
    this.requests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?limits,
      'requests': ?requests,
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesContainerResources.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesContainerResources(
      limits: map['limits'] == null ? null : (((map['limits'] as Map).cast<String, String>()).input()).input(),
      requests: map['requests'] == null ? null : (((map['requests'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

