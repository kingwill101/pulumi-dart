// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classifier_csv_classifier.dart';
import 'classifier_grok_classifier.dart';
import 'classifier_json_classifier.dart';
import 'classifier_xml_classifier.dart';

/// {@template pulumi_glue_classifier_classifier_args_doc}
/// The set of arguments for Classifier.
/// {@endtemplate}
/// {@macro pulumi_glue_classifier_classifier_args_doc}
class ClassifierArgs {
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

  /// Creates a new [ClassifierArgs].
  /// [csvClassifier] A classifier for CSV content. Defined below.
  /// [grokClassifier] A classifier that uses grok patterns. Defined below.
  /// [jsonClassifier] A classifier for JSON content. Defined below.
  /// [name] The name of the classifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [xmlClassifier] A classifier for XML content. Defined below.
  ClassifierArgs({
    ClassifierCsvClassifier? csvClassifier,
    ClassifierGrokClassifier? grokClassifier,
    ClassifierJsonClassifier? jsonClassifier,
    String? name,
    String? region,
    ClassifierXmlClassifier? xmlClassifier,
  }) :
      csvClassifier = pulumi.Input.asOptionalInput<ClassifierCsvClassifier>(csvClassifier),
      grokClassifier = pulumi.Input.asOptionalInput<ClassifierGrokClassifier>(grokClassifier),
      jsonClassifier = pulumi.Input.asOptionalInput<ClassifierJsonClassifier>(jsonClassifier),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      xmlClassifier = pulumi.Input.asOptionalInput<ClassifierXmlClassifier>(xmlClassifier);

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

  factory ClassifierArgs.fromMap(Map<String, dynamic> map) {
    return ClassifierArgs(
      csvClassifier: map['csvClassifier'] == null ? null : ClassifierCsvClassifier.fromMap((map['csvClassifier'] as Map).cast<String, dynamic>()),
      grokClassifier: map['grokClassifier'] == null ? null : ClassifierGrokClassifier.fromMap((map['grokClassifier'] as Map).cast<String, dynamic>()),
      jsonClassifier: map['jsonClassifier'] == null ? null : ClassifierJsonClassifier.fromMap((map['jsonClassifier'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      xmlClassifier: map['xmlClassifier'] == null ? null : ClassifierXmlClassifier.fromMap((map['xmlClassifier'] as Map).cast<String, dynamic>()),
    );
  }
}

