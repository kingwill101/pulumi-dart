// ignore_for_file: unused_element, unnecessary_cast

class ProjectCustomModuleCustomConfigResourceSelector {
  /// The resource types to run the detector on.
  final List<String> resourceTypes;

  /// Creates a new [ProjectCustomModuleCustomConfigResourceSelector].
  /// [resourceTypes] The resource types to run the detector on.
  ProjectCustomModuleCustomConfigResourceSelector({
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'resourceTypes': resourceTypes};
  }

  factory ProjectCustomModuleCustomConfigResourceSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return ProjectCustomModuleCustomConfigResourceSelector(
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
    );
  }
}
