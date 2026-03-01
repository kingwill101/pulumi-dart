// ignore_for_file: unused_element, unnecessary_cast


/// The auto provisioning configuration.
class CustomRolloutSpecificationAutoProvisionConfig {
  final bool? resourceGraph;
  final bool? storage;

  /// Creates a new [CustomRolloutSpecificationAutoProvisionConfig].
  /// [resourceGraph] Optional.
  /// [storage] Optional.
  CustomRolloutSpecificationAutoProvisionConfig({
    this.resourceGraph,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGraph': ?resourceGraph,
      'storage': ?storage,
    };
  }

  factory CustomRolloutSpecificationAutoProvisionConfig.fromMap(Map<String, dynamic> map) {
    return CustomRolloutSpecificationAutoProvisionConfig(
      resourceGraph: map['resourceGraph'] == null ? null : map['resourceGraph'] as bool,
      storage: map['storage'] == null ? null : map['storage'] as bool,
    );
  }
}

