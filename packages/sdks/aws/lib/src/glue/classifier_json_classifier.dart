// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClassifierJsonClassifier {
  /// A `JsonPath` string defining the JSON data for the classifier to classify. AWS Glue supports a subset of `JsonPath`, as described in [Writing JsonPath Custom Classifiers](https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json).
  final pulumi.Input<String> jsonPath;

  /// Creates a new [ClassifierJsonClassifier].
  /// [jsonPath] A `JsonPath` string defining the JSON data for the classifier to classify. AWS Glue supports a subset of `JsonPath`, as described in [Writing JsonPath Custom Classifiers](https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json).
  ClassifierJsonClassifier({required this.jsonPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'jsonPath': jsonPath};
  }

  factory ClassifierJsonClassifier.fromMap(Map<String, dynamic> map) {
    return ClassifierJsonClassifier(
      jsonPath: pulumi.Input.fromValue(map['jsonPath'] as String),
    );
  }
}
