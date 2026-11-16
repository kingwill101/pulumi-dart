// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inference_component_specification_container_container_metrics_config.dart';

class InferenceComponentSpecificationContainer {
  /// Amazon S3 path where the model artifacts are stored (.tar.gz).
  final pulumi.Input<String?>? artifactUrl;
  /// Configuration for container metrics scraping. See `containerMetricsConfig` Block.
  final pulumi.Input<InferenceComponentSpecificationContainerContainerMetricsConfig?>? containerMetricsConfig;
  /// Environment variables to set in the Docker container.
  final pulumi.Input<Map<String, String>?>? environment;
  /// Amazon ECR path where the Docker image for the model is stored.
  final pulumi.Input<String?>? image;
  /// Specific digest path of the container image that was resolved and deployed.
  final pulumi.Input<String?>? resolvedImage;

  /// Creates a new [InferenceComponentSpecificationContainer].
  /// [artifactUrl] Amazon S3 path where the model artifacts are stored (.tar.gz).
  /// [containerMetricsConfig] Configuration for container metrics scraping. See `containerMetricsConfig` Block.
  /// [environment] Environment variables to set in the Docker container.
  /// [image] Amazon ECR path where the Docker image for the model is stored.
  /// [resolvedImage] Specific digest path of the container image that was resolved and deployed.
  const InferenceComponentSpecificationContainer({
    this.artifactUrl,
    this.containerMetricsConfig,
    this.environment,
    this.image,
    this.resolvedImage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactUrl': ?artifactUrl,
      'containerMetricsConfig': ?pulumi.Input.mapOptionalInputValue<InferenceComponentSpecificationContainerContainerMetricsConfig, Map<String, dynamic>>(containerMetricsConfig, (value) => value.toMap()),
      'environment': ?environment,
      'image': ?image,
      'resolvedImage': ?resolvedImage,
    };
  }

  factory InferenceComponentSpecificationContainer.fromMap(Map<String, dynamic> map) {
    return InferenceComponentSpecificationContainer(
      artifactUrl: (() { final guardedValue = map['artifactUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerMetricsConfig: (() { final guardedValue = map['containerMetricsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceComponentSpecificationContainerContainerMetricsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolvedImage: (() { final guardedValue = map['resolvedImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
