// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../classifier_csv_classifier/classifier_csv_classifier.dart';
import '../classifier_grok_classifier/classifier_grok_classifier.dart';
import '../classifier_json_classifier/classifier_json_classifier.dart';
import '../classifier_xml_classifier/classifier_xml_classifier.dart';

/// The set of arguments for Classifier.
class ClassifierArgs {
  /// A classifier for CSV content. Defined below.
  final Input<ClassifierCsvClassifier>? csvClassifier;

  /// A classifier that uses grok patterns. Defined below.
  final Input<ClassifierGrokClassifier>? grokClassifier;

  /// A classifier for JSON content. Defined below.
  final Input<ClassifierJsonClassifier>? jsonClassifier;

  /// The name of the classifier.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A classifier for XML content. Defined below.
  final Input<ClassifierXmlClassifier>? xmlClassifier;

  ClassifierArgs({
    this.csvClassifier,
    this.grokClassifier,
    this.jsonClassifier,
    this.name,
    this.region,
    this.xmlClassifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final csvClassifierValue = csvClassifier;
    if (csvClassifierValue != null) {
      map['csvClassifier'] = Input.mapOptionalInputValue<
          ClassifierCsvClassifier,
          Map<String, dynamic>>(csvClassifierValue, (value) => value.toMap());
    }
    final grokClassifierValue = grokClassifier;
    if (grokClassifierValue != null) {
      map['grokClassifier'] = Input.mapOptionalInputValue<
          ClassifierGrokClassifier,
          Map<String, dynamic>>(grokClassifierValue, (value) => value.toMap());
    }
    final jsonClassifierValue = jsonClassifier;
    if (jsonClassifierValue != null) {
      map['jsonClassifier'] = Input.mapOptionalInputValue<
          ClassifierJsonClassifier,
          Map<String, dynamic>>(jsonClassifierValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final xmlClassifierValue = xmlClassifier;
    if (xmlClassifierValue != null) {
      map['xmlClassifier'] = Input.mapOptionalInputValue<
          ClassifierXmlClassifier,
          Map<String, dynamic>>(xmlClassifierValue, (value) => value.toMap());
    }
    return map;
  }

  factory ClassifierArgs.fromMap(Map<String, dynamic> map) {
    return ClassifierArgs(
      csvClassifier:
          Input.asOptionalInput<ClassifierCsvClassifier>(map['csvClassifier']),
      grokClassifier: Input.asOptionalInput<ClassifierGrokClassifier>(
          map['grokClassifier']),
      jsonClassifier: Input.asOptionalInput<ClassifierJsonClassifier>(
          map['jsonClassifier']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      xmlClassifier:
          Input.asOptionalInput<ClassifierXmlClassifier>(map['xmlClassifier']),
    );
  }
}
