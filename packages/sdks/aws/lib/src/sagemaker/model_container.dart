// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_container_additional_model_data_source.dart';
import 'model_container_image_config.dart';
import 'model_container_model_data_source.dart';
import 'model_container_multi_model_config.dart';

class ModelContainer {
  /// Additional data sources that are available to the model in addition to those specified in `model_data_source`. See Additional Model Data Source.
  final pulumi.Input<List<ModelContainerAdditionalModelDataSource>>? additionalModelDataSources;
  /// DNS host name for the container.
  final pulumi.Input<String>? containerHostname;
  /// Environment variables for the Docker container.
  final pulumi.Input<Map<String, String>>? environment;
  /// Registry path where the inference code image is stored in Amazon ECR.
  final pulumi.Input<String>? image;
  /// Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). For more information see [Using a Private Docker Registry for Real-Time Inference Containers](https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-containers-inference-private.html). see Image Config.
  final pulumi.Input<ModelContainerImageConfig>? imageConfig;
  /// Inference specification name in the model package version.
  final pulumi.Input<String>? inferenceSpecificationName;
  /// Container hosts value. Allowed values are: `SingleModel` and `MultiModel`. The default value is `SingleModel`.
  final pulumi.Input<String>? mode;
  /// Location of model data to deploy. Use this for uncompressed model deployment. For information about how to deploy an uncompressed model, see [Deploying uncompressed models](https://docs.aws.amazon.com/sagemaker/latest/dg/large-model-inference-uncompressed.html) in the _AWS SageMaker AI Developer Guide_.
  final pulumi.Input<ModelContainerModelDataSource>? modelDataSource;
  /// URL for the S3 location where model artifacts are stored.
  final pulumi.Input<String>? modelDataUrl;
  /// Amazon Resource Name (ARN) of the model package to use to create the model.
  /// A list of key value pairs.
  final pulumi.Input<String>? modelPackageName;
  /// Specifies additional configuration for multi-model endpoints. see Multi Model Config.
  final pulumi.Input<ModelContainerMultiModelConfig>? multiModelConfig;

  /// Creates a new [ModelContainer].
  /// [additionalModelDataSources] Additional data sources that are available to the model in addition to those specified in `model_data_source`. See Additional Model Data Source.
  /// [containerHostname] DNS host name for the container.
  /// [environment] Environment variables for the Docker container.
  /// [image] Registry path where the inference code image is stored in Amazon ECR.
  /// [imageConfig] Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). For more information see [Using a Private Docker Registry for Real-Time Inference Containers](https://docs.aws.amazon.com/sagemaker/latest/dg/your-algorithms-containers-inference-private.html). see Image Config.
  /// [inferenceSpecificationName] Inference specification name in the model package version.
  /// [mode] Container hosts value. Allowed values are: `SingleModel` and `MultiModel`. The default value is `SingleModel`.
  /// [modelDataSource] Location of model data to deploy. Use this for uncompressed model deployment. For information about how to deploy an uncompressed model, see [Deploying uncompressed models](https://docs.aws.amazon.com/sagemaker/latest/dg/large-model-inference-uncompressed.html) in the _AWS SageMaker AI Developer Guide_.
  /// [modelDataUrl] URL for the S3 location where model artifacts are stored.
  /// [modelPackageName] Amazon Resource Name (ARN) of the model package to use to create the model.
  /// [multiModelConfig] Specifies additional configuration for multi-model endpoints. see Multi Model Config.
  const ModelContainer({
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
      'additionalModelDataSources': ?pulumi.Input.mapOptionalInputValue<List<ModelContainerAdditionalModelDataSource>, List<Map<String, dynamic>>>(additionalModelDataSources, (value) => pulumi.Input.encodeList<ModelContainerAdditionalModelDataSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerHostname': ?containerHostname,
      'environment': ?environment,
      'image': ?image,
      'imageConfig': ?pulumi.Input.mapOptionalInputValue<ModelContainerImageConfig, Map<String, dynamic>>(imageConfig, (value) => value.toMap()),
      'inferenceSpecificationName': ?inferenceSpecificationName,
      'mode': ?mode,
      'modelDataSource': ?pulumi.Input.mapOptionalInputValue<ModelContainerModelDataSource, Map<String, dynamic>>(modelDataSource, (value) => value.toMap()),
      'modelDataUrl': ?modelDataUrl,
      'modelPackageName': ?modelPackageName,
      'multiModelConfig': ?pulumi.Input.mapOptionalInputValue<ModelContainerMultiModelConfig, Map<String, dynamic>>(multiModelConfig, (value) => value.toMap()),
    };
  }

  factory ModelContainer.fromMap(Map<String, dynamic> map) {
    return ModelContainer(
      additionalModelDataSources: (() { final guardedValue = map['additionalModelDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ModelContainerAdditionalModelDataSource>(guardedValue, (value) => ModelContainerAdditionalModelDataSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      containerHostname: (() { final guardedValue = map['containerHostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageConfig: (() { final guardedValue = map['imageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelContainerImageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inferenceSpecificationName: (() { final guardedValue = map['inferenceSpecificationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelDataSource: (() { final guardedValue = map['modelDataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelContainerModelDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelDataUrl: (() { final guardedValue = map['modelDataUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelPackageName: (() { final guardedValue = map['modelPackageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiModelConfig: (() { final guardedValue = map['multiModelConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelContainerMultiModelConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

