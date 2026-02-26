import 'package:pulumi/pulumi.dart';
import 'dataset_args7.dart';

/// Creates a Dataset.
class Dataset7 extends CustomResource {
  /// Timestamp when this dataset was created.
  late final Output<String> createTime;

  /// The name of the dataset to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  late final Output<String> displayName;

  /// The number of examples in the dataset.
  late final Output<int> exampleCount;
  late final Output<String> location;

  /// The resource name of the dataset, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  late final Output<String> name;
  late final Output<String> project;

  /// The BCP-47 language code of the source language.
  late final Output<String> sourceLanguageCode;

  /// The BCP-47 language code of the target language.
  late final Output<String> targetLanguageCode;

  /// Number of test examples (sentence pairs).
  late final Output<int> testExampleCount;

  /// Number of training examples (sentence pairs).
  late final Output<int> trainExampleCount;

  /// Timestamp when this dataset was last updated.
  late final Output<String> updateTime;

  /// Number of validation examples (sentence pairs).
  late final Output<int> validateExampleCount;

  Dataset7(
    String name, {
    DatasetArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:translate/v3:Dataset',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.exampleCount = Output.createUnknown<int>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.sourceLanguageCode = Output.createUnknown<String>();
    this.targetLanguageCode = Output.createUnknown<String>();
    this.testExampleCount = Output.createUnknown<int>();
    this.trainExampleCount = Output.createUnknown<int>();
    this.updateTime = Output.createUnknown<String>();
    this.validateExampleCount = Output.createUnknown<int>();
  }
}
