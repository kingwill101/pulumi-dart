import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_translate_v3_args.dart';

/// Creates a Model.
class ModelTranslateV3 extends pulumi.CustomResource {
  /// Timestamp when the model resource was created, which is also when the training started.
  late final pulumi.Output<String> createTime;

  /// The dataset from which the model is trained, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  late final pulumi.Output<String> dataset;

  /// The name of the model to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;

  /// The resource name of the model, in form of `projects/{project-number-or-id}/locations/{location_id}/models/{model_id}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The BCP-47 language code of the source language.
  late final pulumi.Output<String> sourceLanguageCode;

  /// The BCP-47 language code of the target language.
  late final pulumi.Output<String> targetLanguageCode;

  /// Number of examples (sentence pairs) used to test the model.
  late final pulumi.Output<int> testExampleCount;

  /// Number of examples (sentence pairs) used to train the model.
  late final pulumi.Output<int> trainExampleCount;

  /// Timestamp when this model was last updated.
  late final pulumi.Output<String> updateTime;

  /// Number of examples (sentence pairs) used to validate the model.
  late final pulumi.Output<int> validateExampleCount;

  ModelTranslateV3(
    String name, {
    ModelTranslateV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:translate/v3:Model',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataset = registerOutput<String>('dataset');
    this.displayName = registerOutput<String>('displayName');
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
