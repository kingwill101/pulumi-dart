// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionEksPropertyPodPropertyMetadata {
  /// Key-value pairs used to identify, sort, and organize cube resources.
  final pulumi.Input<Map<String, String>> labels;

  /// Creates a new [GetJobDefinitionEksPropertyPodPropertyMetadata].
  /// [labels] Key-value pairs used to identify, sort, and organize cube resources.
  GetJobDefinitionEksPropertyPodPropertyMetadata({
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': labels,
    };
  }

  factory GetJobDefinitionEksPropertyPodPropertyMetadata.fromMap(Map<String, dynamic> map) {
    return GetJobDefinitionEksPropertyPodPropertyMetadata(
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
    );
  }
}

