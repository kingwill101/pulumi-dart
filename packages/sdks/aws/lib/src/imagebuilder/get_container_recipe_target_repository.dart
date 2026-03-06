// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainerRecipeTargetRepository {
  /// Name of the container repository where the output container image is stored. The name is prefixed by the repository location.
  final pulumi.Input<String> repositoryName;
  /// Service in which this image is registered.
  final pulumi.Input<String> service;

  /// Creates a new [GetContainerRecipeTargetRepository].
  /// [repositoryName] Name of the container repository where the output container image is stored. The name is prefixed by the repository location.
  /// [service] Service in which this image is registered.
  const GetContainerRecipeTargetRepository({
    required this.repositoryName,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryName': repositoryName,
      'service': service,
    };
  }

  factory GetContainerRecipeTargetRepository.fromMap(Map<String, dynamic> map) {
    return GetContainerRecipeTargetRepository(
      repositoryName: pulumi.Input.fromValue(map['repositoryName'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

