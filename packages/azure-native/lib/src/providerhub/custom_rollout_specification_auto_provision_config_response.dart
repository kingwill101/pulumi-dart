// ignore_for_file: unused_element, unnecessary_cast


/// The auto provisioning configuration.
class CustomRolloutSpecificationAutoProvisionConfigResponse {
  final bool? resourceGraph;
  final bool? storage;

  /// Creates a new [CustomRolloutSpecificationAutoProvisionConfigResponse].
  /// [resourceGraph] Optional.
  /// [storage] Optional.
  CustomRolloutSpecificationAutoProvisionConfigResponse({
    this.resourceGraph,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGraph': ?resourceGraph,
      'storage': ?storage,
    };
  }

  factory CustomRolloutSpecificationAutoProvisionConfigResponse.fromMap(Map<String, dynamic> map) {
    return CustomRolloutSpecificationAutoProvisionConfigResponse(
      resourceGraph: map['resourceGraph'] == null ? null : map['resourceGraph'] as bool,
      storage: map['storage'] == null ? null : map['storage'] as bool,
    );
  }
}

