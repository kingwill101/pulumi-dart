// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesImagePullSecret {
  /// Unique identifier.
  final pulumi.Input<String> name;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesImagePullSecret].
  /// [name] Unique identifier.
  JobDefinitionEksPropertiesPodPropertiesImagePullSecret({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory JobDefinitionEksPropertiesPodPropertiesImagePullSecret.fromMap(Map<String, dynamic> map) {
    return JobDefinitionEksPropertiesPodPropertiesImagePullSecret(
      name: (map['name'] as String).input(),
    );
  }
}

