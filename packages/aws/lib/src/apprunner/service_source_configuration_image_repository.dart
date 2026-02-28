// ignore_for_file: unused_element, unnecessary_cast

import 'service_source_configuration_image_repository_image_configuration.dart';

class ServiceSourceConfigurationImageRepository {
  /// Configuration for running the identified image. See Image Configuration below for more details.
  final ServiceSourceConfigurationImageRepositoryImageConfiguration?
      imageConfiguration;

  /// Identifier of an image. For an image in Amazon Elastic Container Registry (Amazon ECR), this is an image name. For the
  /// image name format, see Pulling an image in the Amazon ECR User Guide.
  final String imageIdentifier;

  /// Type of the image repository. This reflects the repository provider and whether the repository is private or public. Valid values: `ECR` , `ECR_PUBLIC`.
  final String imageRepositoryType;

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
    final map = <String, dynamic>{};
    final imageConfigurationValue = imageConfiguration;
    if (imageConfigurationValue != null) {
      map['imageConfiguration'] = imageConfigurationValue.toMap();
    }
    map['imageIdentifier'] = imageIdentifier;
    map['imageRepositoryType'] = imageRepositoryType;
    return map;
  }

  factory ServiceSourceConfigurationImageRepository.fromMap(
      Map<String, dynamic> map) {
    return ServiceSourceConfigurationImageRepository(
      imageConfiguration: map['imageConfiguration'] == null
          ? null
          : ServiceSourceConfigurationImageRepositoryImageConfiguration.fromMap(
              (map['imageConfiguration'] as Map).cast<String, dynamic>()),
      imageIdentifier: map['imageIdentifier'] as String,
      imageRepositoryType: map['imageRepositoryType'] as String,
    );
  }
}
