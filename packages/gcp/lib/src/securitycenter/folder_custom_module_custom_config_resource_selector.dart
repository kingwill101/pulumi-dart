// ignore_for_file: unused_element, unnecessary_cast

class FolderCustomModuleCustomConfigResourceSelector {
  /// The resource types to run the detector on.
  final List<String> resourceTypes;

  /// Creates a new [FolderCustomModuleCustomConfigResourceSelector].
  /// [resourceTypes] The resource types to run the detector on.
  FolderCustomModuleCustomConfigResourceSelector({
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['resourceTypes'] = resourceTypes;
    return map;
  }

  factory FolderCustomModuleCustomConfigResourceSelector.fromMap(
      Map<String, dynamic> map) {
    return FolderCustomModuleCustomConfigResourceSelector(
      resourceTypes: (map['resourceTypes'] as List).cast<String>(),
    );
  }
}
