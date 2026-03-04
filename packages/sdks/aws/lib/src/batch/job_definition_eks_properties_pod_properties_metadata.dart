// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobDefinitionEksPropertiesPodPropertiesMetadata {
  /// Key-value pairs used to identify, sort, and organize kubernetes resources.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [JobDefinitionEksPropertiesPodPropertiesMetadata].
  /// [labels] Key-value pairs used to identify, sort, and organize kubernetes resources.
  JobDefinitionEksPropertiesPodPropertiesMetadata({this.labels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labels': ?labels};
  }

  factory JobDefinitionEksPropertiesPodPropertiesMetadata.fromMap(
    Map<String, dynamic> map,
  ) {
    return JobDefinitionEksPropertiesPodPropertiesMetadata(
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
