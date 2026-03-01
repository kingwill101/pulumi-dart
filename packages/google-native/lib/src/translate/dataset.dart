import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_args.dart';

/// Creates a Dataset.
class Dataset extends pulumi.CustomResource {
  /// Timestamp when this dataset was created.
  late final pulumi.Output<String> createTime;

  /// The name of the dataset to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  late final pulumi.Output<String> displayName;

  /// The number of examples in the dataset.
  late final pulumi.Output<int> exampleCount;
  late final pulumi.Output<String> location;

  /// The resource name of the dataset, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The BCP-47 language code of the source language.
  late final pulumi.Output<String> sourceLanguageCode;

  /// The BCP-47 language code of the target language.
  late final pulumi.Output<String> targetLanguageCode;

  /// Number of test examples (sentence pairs).
  late final pulumi.Output<int> testExampleCount;

  /// Number of training examples (sentence pairs).
  late final pulumi.Output<int> trainExampleCount;

  /// Timestamp when this dataset was last updated.
  late final pulumi.Output<String> updateTime;

  /// Number of validation examples (sentence pairs).
  late final pulumi.Output<int> validateExampleCount;

  /// Creates a new [Dataset].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dataset]. {@macro pulumi_translate_v3_dataset_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dataset(
    String name, {
    DatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:translate/v3:Dataset',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.exampleCount = registerOutput<int>('exampleCount');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.sourceLanguageCode = registerOutput<String>('sourceLanguageCode');
    this.targetLanguageCode = registerOutput<String>('targetLanguageCode');
    this.testExampleCount = registerOutput<int>('testExampleCount');
    this.trainExampleCount = registerOutput<int>('trainExampleCount');
    this.updateTime = registerOutput<String>('updateTime');
    this.validateExampleCount = registerOutput<int>('validateExampleCount');
  }
}
