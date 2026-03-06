// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesContainerResources {
  final pulumi.Input<Map<String, String>>? limits;
  final pulumi.Input<Map<String, String>>? requests;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesContainerResources].
  /// [limits] Optional.
  /// [requests] Optional.
  const JobDefinitionEksPropertiesPodPropertiesContainerResources({
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
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

