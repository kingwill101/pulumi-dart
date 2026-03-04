// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_source_configuration_image_repository_image_configuration.dart';

class ServiceSourceConfigurationImageRepository {
  /// Configuration for running the identified image. See Image Configuration below for more details.
  final pulumi.Input<
    ServiceSourceConfigurationImageRepositoryImageConfiguration
  >?
  imageConfiguration;

  /// Identifier of an image. For an image in Amazon Elastic Container Registry (Amazon ECR), this is an image name. For the
  /// image name format, see Pulling an image in the Amazon ECR User Guide.
  final pulumi.Input<String> imageIdentifier;

  /// Type of the image repository. This reflects the repository provider and whether the repository is private or public. Valid values: `ECR` , `ECR_PUBLIC`.
  final pulumi.Input<String> imageRepositoryType;

  /// Creates a new [ServiceSourceConfigurationImageRepository].
  /// [imageConfiguration] Configuration for running the identified image. See Image Configuration below for more details.
  /// [imageIdentifier] Identifier of an image. For an image in Amazon Elastic Container Registry (Amazon ECR), this is an image name. For the
  /// [imageRepositoryType] Type of the image repository. This reflects the repository provider and whether the repository is private or public. Valid values: `ECR` , `ECR_PUBLIC`.
  ServiceSourceConfigurationImageRepository({
    this.imageConfiguration,
    required this.imageIdentifier,
    required this.imageRepositoryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceSourceConfigurationImageRepositoryImageConfiguration,
            Map<String, dynamic>
          >(imageConfiguration, (value) => value.toMap()),
      'imageIdentifier': imageIdentifier,
      'imageRepositoryType': imageRepositoryType,
    };
  }

  factory ServiceSourceConfigurationImageRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceSourceConfigurationImageRepository(
      imageConfiguration: (() {
        final guardedValue = map['imageConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceSourceConfigurationImageRepositoryImageConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      imageIdentifier: pulumi.Input.fromValue(map['imageIdentifier'] as String),
      imageRepositoryType: pulumi.Input.fromValue(
        map['imageRepositoryType'] as String,
      ),
    );
  }
}
