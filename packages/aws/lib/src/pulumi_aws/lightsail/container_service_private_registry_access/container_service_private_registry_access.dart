// ignore_for_file: unused_element, unnecessary_cast

import '../container_service_private_registry_access_ecr_image_puller_role/container_service_private_registry_access_ecr_image_puller_role.dart';

class ContainerServicePrivateRegistryAccess {
  /// Configuration to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See below.
  final ContainerServicePrivateRegistryAccessEcrImagePullerRole?
      ecrImagePullerRole;

  ContainerServicePrivateRegistryAccess({
    this.ecrImagePullerRole,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final ecrImagePullerRoleValue = ecrImagePullerRole;
    if (ecrImagePullerRoleValue != null) {
      map['ecrImagePullerRole'] = ecrImagePullerRoleValue.toMap();
    }
    return map;
  }

  factory ContainerServicePrivateRegistryAccess.fromMap(
      Map<String, dynamic> map) {
    return ContainerServicePrivateRegistryAccess(
      ecrImagePullerRole: map['ecrImagePullerRole'] == null
          ? null
          : ContainerServicePrivateRegistryAccessEcrImagePullerRole.fromMap(
              (map['ecrImagePullerRole'] as Map).cast<String, dynamic>()),
    );
  }
}
