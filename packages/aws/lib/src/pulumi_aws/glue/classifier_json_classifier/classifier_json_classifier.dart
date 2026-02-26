// ignore_for_file: unused_element, unnecessary_cast

class ClassifierJsonClassifier {
  /// A `JsonPath` string defining the JSON data for the classifier to classify. AWS Glue supports a subset of `JsonPath`, as described in [Writing JsonPath Custom Classifiers](https://docs.aws.amazon.com/glue/latest/dg/custom-classifier.html#custom-classifier-json).
  final String jsonPath;

  ClassifierJsonClassifier({
    required this.jsonPath,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jsonPath'] = jsonPath;
    return map;
  }

  factory ClassifierJsonClassifier.fromMap(Map<String, dynamic> map) {
    return ClassifierJsonClassifier(
      jsonPath: map['jsonPath'] as String,
    );
  }
}
