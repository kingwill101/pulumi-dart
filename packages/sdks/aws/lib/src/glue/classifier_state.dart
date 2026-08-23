// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classifier_csv_classifier.dart';
import 'classifier_grok_classifier.dart';
import 'classifier_json_classifier.dart';
import 'classifier_xml_classifier.dart';

/// Input properties used for looking up and filtering Classifier resources.
class ClassifierState {
  /// A classifier for CSV content. Defined below.
  final pulumi.Input<ClassifierCsvClassifier>? csvClassifier;
  /// A classifier that uses grok patterns. Defined below.
  final pulumi.Input<ClassifierGrokClassifier>? grokClassifier;
  /// A classifier for JSON content. Defined below.
  final pulumi.Input<ClassifierJsonClassifier>? jsonClassifier;
  /// The name of the classifier.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A classifier for XML content. Defined below.
  final pulumi.Input<ClassifierXmlClassifier>? xmlClassifier;

  /// Creates a new [ClassifierState].
  /// [csvClassifier] A classifier for CSV content. Defined below.
  /// [grokClassifier] A classifier that uses grok patterns. Defined below.
  /// [jsonClassifier] A classifier for JSON content. Defined below.
  /// [name] The name of the classifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [xmlClassifier] A classifier for XML content. Defined below.
  const ClassifierState({
    this.csvClassifier,
    this.grokClassifier,
    this.jsonClassifier,
    this.name,
    this.region,
    this.xmlClassifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvClassifier': ?pulumi.Input.mapOptionalInputValue<ClassifierCsvClassifier, Map<String, dynamic>>(csvClassifier, (value) => value.toMap()),
      'grokClassifier': ?pulumi.Input.mapOptionalInputValue<ClassifierGrokClassifier, Map<String, dynamic>>(grokClassifier, (value) => value.toMap()),
      'jsonClassifier': ?pulumi.Input.mapOptionalInputValue<ClassifierJsonClassifier, Map<String, dynamic>>(jsonClassifier, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'xmlClassifier': ?pulumi.Input.mapOptionalInputValue<ClassifierXmlClassifier, Map<String, dynamic>>(xmlClassifier, (value) => value.toMap()),
    };
  }

  factory ClassifierState.fromMap(Map<String, dynamic> map) {
    return ClassifierState(
      csvClassifier: (() { final guardedValue = map['csvClassifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClassifierCsvClassifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      grokClassifier: (() { final guardedValue = map['grokClassifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClassifierGrokClassifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      jsonClassifier: (() { final guardedValue = map['jsonClassifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClassifierJsonClassifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xmlClassifier: (() { final guardedValue = map['xmlClassifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClassifierXmlClassifier.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
