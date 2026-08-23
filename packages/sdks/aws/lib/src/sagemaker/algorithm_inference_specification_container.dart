// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'algorithm_inference_specification_container_additional_s3_data_source.dart';
import 'algorithm_inference_specification_container_base_model.dart';
import 'algorithm_inference_specification_container_model_data_source.dart';
import 'algorithm_inference_specification_container_model_input.dart';

class AlgorithmInferenceSpecificationContainer {
  /// Additional model data to make available to the container. See Additional S3 Data Source.
  final pulumi.Input<AlgorithmInferenceSpecificationContainerAdditionalS3DataSource>? additionalS3DataSource;
  /// Base model information for the container. See Base Model.
  final pulumi.Input<AlgorithmInferenceSpecificationContainerBaseModel>? baseModel;
  /// DNS host name for the container.
  final pulumi.Input<String>? containerHostname;
  /// Environment variables to pass to the container.
  final pulumi.Input<Map<String, String>>? environment;
  /// Machine learning framework in the container image.
  final pulumi.Input<String>? framework;
  /// Framework version in the container image.
  final pulumi.Input<String>? frameworkVersion;
  /// Container image URI.
  final pulumi.Input<String>? image;
  /// Digest of the container image.
  final pulumi.Input<String>? imageDigest;
  /// Whether the container is used as a checkpoint container.
  final pulumi.Input<bool>? isCheckpoint;
  /// ETag for `modelDataUrl`.
  final pulumi.Input<String>? modelDataEtag;
  /// Source of model data for the container. See Model Data Source.
  final pulumi.Input<AlgorithmInferenceSpecificationContainerModelDataSource>? modelDataSource;
  /// S3 or HTTPS URL of the model artifacts.
  final pulumi.Input<String>? modelDataUrl;
  /// Additional model input configuration. See Model Input.
  final pulumi.Input<AlgorithmInferenceSpecificationContainerModelInput>? modelInput;
  /// Name of a pre-existing model nearest to the one being created.
  final pulumi.Input<String>? nearestModelName;
  /// AWS Marketplace product ID.
  final pulumi.Input<String>? productId;

  /// Creates a new [AlgorithmInferenceSpecificationContainer].
  /// [additionalS3DataSource] Additional model data to make available to the container. See Additional S3 Data Source.
  /// [baseModel] Base model information for the container. See Base Model.
  /// [containerHostname] DNS host name for the container.
  /// [environment] Environment variables to pass to the container.
  /// [framework] Machine learning framework in the container image.
  /// [frameworkVersion] Framework version in the container image.
  /// [image] Container image URI.
  /// [imageDigest] Digest of the container image.
  /// [isCheckpoint] Whether the container is used as a checkpoint container.
  /// [modelDataEtag] ETag for `modelDataUrl`.
  /// [modelDataSource] Source of model data for the container. See Model Data Source.
  /// [modelDataUrl] S3 or HTTPS URL of the model artifacts.
  /// [modelInput] Additional model input configuration. See Model Input.
  /// [nearestModelName] Name of a pre-existing model nearest to the one being created.
  /// [productId] AWS Marketplace product ID.
  const AlgorithmInferenceSpecificationContainer({
    this.additionalS3DataSource,
    this.baseModel,
    this.containerHostname,
    this.environment,
    this.framework,
    this.frameworkVersion,
    this.image,
    this.imageDigest,
    this.isCheckpoint,
    this.modelDataEtag,
    this.modelDataSource,
    this.modelDataUrl,
    this.modelInput,
    this.nearestModelName,
    this.productId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalS3DataSource': ?pulumi.Input.mapOptionalInputValue<AlgorithmInferenceSpecificationContainerAdditionalS3DataSource, Map<String, dynamic>>(additionalS3DataSource, (value) => value.toMap()),
      'baseModel': ?pulumi.Input.mapOptionalInputValue<AlgorithmInferenceSpecificationContainerBaseModel, Map<String, dynamic>>(baseModel, (value) => value.toMap()),
      'containerHostname': ?containerHostname,
      'environment': ?environment,
      'framework': ?framework,
      'frameworkVersion': ?frameworkVersion,
      'image': ?image,
      'imageDigest': ?imageDigest,
      'isCheckpoint': ?isCheckpoint,
      'modelDataEtag': ?modelDataEtag,
      'modelDataSource': ?pulumi.Input.mapOptionalInputValue<AlgorithmInferenceSpecificationContainerModelDataSource, Map<String, dynamic>>(modelDataSource, (value) => value.toMap()),
      'modelDataUrl': ?modelDataUrl,
      'modelInput': ?pulumi.Input.mapOptionalInputValue<AlgorithmInferenceSpecificationContainerModelInput, Map<String, dynamic>>(modelInput, (value) => value.toMap()),
      'nearestModelName': ?nearestModelName,
      'productId': ?productId,
    };
  }

  factory AlgorithmInferenceSpecificationContainer.fromMap(Map<String, dynamic> map) {
    return AlgorithmInferenceSpecificationContainer(
      additionalS3DataSource: (() { final guardedValue = map['additionalS3DataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmInferenceSpecificationContainerAdditionalS3DataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      baseModel: (() { final guardedValue = map['baseModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmInferenceSpecificationContainerBaseModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      containerHostname: (() { final guardedValue = map['containerHostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      framework: (() { final guardedValue = map['framework']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frameworkVersion: (() { final guardedValue = map['frameworkVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageDigest: (() { final guardedValue = map['imageDigest']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isCheckpoint: (() { final guardedValue = map['isCheckpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      modelDataEtag: (() { final guardedValue = map['modelDataEtag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelDataSource: (() { final guardedValue = map['modelDataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmInferenceSpecificationContainerModelDataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modelDataUrl: (() { final guardedValue = map['modelDataUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelInput: (() { final guardedValue = map['modelInput']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AlgorithmInferenceSpecificationContainerModelInput.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nearestModelName: (() { final guardedValue = map['nearestModelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: (() { final guardedValue = map['productId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
