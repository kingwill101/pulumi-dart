// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_service_private_registry_access_ecr_image_puller_role.dart';

class ContainerServicePrivateRegistryAccess {
  /// Configuration to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See below.
  final pulumi.Input<ContainerServicePrivateRegistryAccessEcrImagePullerRole?>? ecrImagePullerRole;

  /// Creates a new [ContainerServicePrivateRegistryAccess].
  /// [ecrImagePullerRole] Configuration to access private container image repositories, such as Amazon Elastic Container Registry (Amazon ECR) private repositories. See below.
  const ContainerServicePrivateRegistryAccess({
    this.ecrImagePullerRole,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ecrImagePullerRole': ?pulumi.Input.mapOptionalInputValue<ContainerServicePrivateRegistryAccessEcrImagePullerRole, Map<String, dynamic>>(ecrImagePullerRole, (value) => value.toMap()),
    };
  }

  factory ContainerServicePrivateRegistryAccess.fromMap(Map<String, dynamic> map) {
    return ContainerServicePrivateRegistryAccess(
      ecrImagePullerRole: (() { final guardedValue = map['ecrImagePullerRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerServicePrivateRegistryAccessEcrImagePullerRole.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
