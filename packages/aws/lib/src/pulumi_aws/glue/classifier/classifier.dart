import 'package:pulumi/pulumi.dart' as pulumi;
import '../classifier_csv_classifier/classifier_csv_classifier.dart';
import '../classifier_grok_classifier/classifier_grok_classifier.dart';
import '../classifier_json_classifier/classifier_json_classifier.dart';
import '../classifier_xml_classifier/classifier_xml_classifier.dart';
import 'classifier_args.dart';

/// Provides a Glue Classifier resource.
///
/// > **NOTE:** It is only valid to create one type of classifier (CSV, grok, JSON, or XML). Changing classifier types will recreate the classifier.
///
/// ## Example Usage
///
/// ### CSV Classifier
///
///
///
/// ### Grok Classifier
///
///
///
/// ### JSON Classifier
///
///
///
/// ### XML Classifier
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Classifiers using their name. For example:
///
/// ```sh
/// $ pulumi import aws:glue/classifier:Classifier MyClassifier MyClassifier
/// ```
class Classifier extends pulumi.CustomResource {
  /// A classifier for CSV content. Defined below.
  late final pulumi.Output<ClassifierCsvClassifier?> csvClassifier;

  /// A classifier that uses grok patterns. Defined below.
  late final pulumi.Output<ClassifierGrokClassifier?> grokClassifier;

  /// A classifier for JSON content. Defined below.
  late final pulumi.Output<ClassifierJsonClassifier?> jsonClassifier;

  /// The name of the classifier.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A classifier for XML content. Defined below.
  late final pulumi.Output<ClassifierXmlClassifier?> xmlClassifier;

  Classifier(
    String name, {
    ClassifierArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:glue/classifier:Classifier',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.csvClassifier =
        registerOutput<ClassifierCsvClassifier?>('csvClassifier');
    this.grokClassifier =
        registerOutput<ClassifierGrokClassifier?>('grokClassifier');
    this.jsonClassifier =
        registerOutput<ClassifierJsonClassifier?>('jsonClassifier');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.xmlClassifier =
        registerOutput<ClassifierXmlClassifier?>('xmlClassifier');
  }
}
