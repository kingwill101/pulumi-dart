// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_primary_container_additional_model_data_source.dart';
import 'model_primary_container_image_config.dart';
import 'model_primary_container_model_data_source.dart';
import 'model_primary_container_multi_model_config.dart';

class ModelPrimaryContainer {
  /// Additional data sources that are available to the model in addition to those specified in `model_data_source`. See Additional Model Data Source.
  final List<ModelPrimaryContainerAdditionalModelDataSource>? additionalModelDataSources;
  /// DNS host name for the container.
  final String? containerHostname;
  /// Environment variables for the Docker container.
  final Map<String, String>? environment;
  /// Registry path where the inference code image is stored in Amazon ECR.
  final String? image;
  /// Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). For more information see [Using a Private Docker Registry for Real-Time Inference Containers](https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-containers-inference-private.html). see Image Config.
  final ModelPrimaryContainerImageConfig? imageConfig;
  /// Inference specification name in the model package version.
  final String? inferenceSpecificationName;
  final String? mode;
  /// Location of model data to deploy. Use this for uncompressed model deployment. For information about how to deploy an uncompressed model, see [Deploying uncompressed models](https://docs.aws.amazon.com/sagemaker/latest/dg/large-model-inference-uncompressed.html) in the _AWS SageMaker AI Developer Guide_.
  final ModelPrimaryContainerModelDataSource? modelDataSource;
  /// URL for the S3 location where model artifacts are stored.
  final String? modelDataUrl;
  /// Amazon Resource Name (ARN) of the model package to use to create the model.
  /// A list of key value pairs.
  final String? modelPackageName;
  /// Specifies additional configuration for multi-model endpoints. see Multi Model Config.
  final ModelPrimaryContainerMultiModelConfig? multiModelConfig;

  /// Creates a new [ModelPrimaryContainer].
  /// [additionalModelDataSources] Additional data sources that are available to the model in addition to those specified in `model_data_source`. See Additional Model Data Source.
  /// [containerHostname] DNS host name for the container.
  /// [environment] Environment variables for the Docker container.
  /// [image] Registry path where the inference code image is stored in Amazon ECR.
  /// [imageConfig] Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). For more information see [Using a Private Docker Registry for Real-Time Inference Containers](https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-containers-inference-private.html). see Image Config.
  /// [inferenceSpecificationName] Inference specification name in the model package version.
  /// [mode] Optional.
  /// [modelDataSource] Location of model data to deploy. Use this for uncompressed model deployment. For information about how to deploy an uncompressed model, see [Deploying uncompressed models](https://docs.aws.amazon.com/sagemaker/latest/dg/large-model-inference-uncompressed.html) in the _AWS SageMaker AI Developer Guide_.
  /// [modelDataUrl] URL for the S3 location where model artifacts are stored.
  /// [modelPackageName] Amazon Resource Name (ARN) of the model package to use to create the model.
  /// [multiModelConfig] Specifies additional configuration for multi-model endpoints. see Multi Model Config.
  ModelPrimaryContainer({
    this.additionalModelDataSources,
    this.containerHostname,
    this.environment,
    this.image,
    this.imageConfig,
    this.inferenceSpecificationName,
    this.mode,
    this.modelDataSource,
    this.modelDataUrl,
    this.modelPackageName,
    this.multiModelConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalModelDataSources': ?additionalModelDataSources == null ? null : pulumi.Input.encodeList<ModelPrimaryContainerAdditionalModelDataSource, Map<String, dynamic>>(additionalModelDataSources!, (value) => value.toMap()),
      'containerHostname': ?containerHostname,
      'environment': ?environment,
      'image': ?image,
      'imageConfig': ?imageConfig == null ? null : imageConfig!.toMap(),
      'inferenceSpecificationName': ?inferenceSpecificationName,
      'mode': ?mode,
      'modelDataSource': ?modelDataSource == null ? null : modelDataSource!.toMap(),
      'modelDataUrl': ?modelDataUrl,
      'modelPackageName': ?modelPackageName,
      'multiModelConfig': ?multiModelConfig == null ? null : multiModelConfig!.toMap(),
    };
  }

  factory ModelPrimaryContainer.fromMap(Map<String, dynamic> map) {
    return ModelPrimaryContainer(
      additionalModelDataSources: map['additionalModelDataSources'] == null ? null : pulumi.Input.decodeList<ModelPrimaryContainerAdditionalModelDataSource>(map['additionalModelDataSources'], (value) => ModelPrimaryContainerAdditionalModelDataSource.fromMap((value as Map).cast<String, dynamic>())),
      containerHostname: map['containerHostname'] == null ? null : map['containerHostname'] as String,
      environment: map['environment'] == null ? null : (map['environment'] as Map).cast<String, String>(),
      image: map['image'] == null ? null : map['image'] as String,
      imageConfig: map['imageConfig'] == null ? null : ModelPrimaryContainerImageConfig.fromMap((map['imageConfig'] as Map).cast<String, dynamic>()),
      inferenceSpecificationName: map['inferenceSpecificationName'] == null ? null : map['inferenceSpecificationName'] as String,
      mode: map['mode'] == null ? null : map['mode'] as String,
      modelDataSource: map['modelDataSource'] == null ? null : ModelPrimaryContainerModelDataSource.fromMap((map['modelDataSource'] as Map).cast<String, dynamic>()),
      modelDataUrl: map['modelDataUrl'] == null ? null : map['modelDataUrl'] as String,
      modelPackageName: map['modelPackageName'] == null ? null : map['modelPackageName'] as String,
      multiModelConfig: map['multiModelConfig'] == null ? null : ModelPrimaryContainerMultiModelConfig.fromMap((map['multiModelConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

