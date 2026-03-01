// ignore_for_file: unused_element, unnecessary_cast


class SpringCloudServiceDefaultBuildService {
  /// Specifies the name of the container registry used in the default build service.
  final String? containerRegistryName;

  /// Creates a new [SpringCloudServiceDefaultBuildService].
  /// [containerRegistryName] Specifies the name of the container registry used in the default build service.
  SpringCloudServiceDefaultBuildService({
    this.containerRegistryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryName': ?containerRegistryName,
    };
  }

  factory SpringCloudServiceDefaultBuildService.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceDefaultBuildService(
      containerRegistryName: map['containerRegistryName'] == null ? null : map['containerRegistryName'] as String,
    );
  }
}

