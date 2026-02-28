// ignore_for_file: unused_element, unnecessary_cast

class ImageRecipeSystemsManagerAgent {
  /// Whether to remove the Systems Manager Agent after the image has been built.
  final bool uninstallAfterBuild;

  /// Creates a new [ImageRecipeSystemsManagerAgent].
  /// [uninstallAfterBuild] Whether to remove the Systems Manager Agent after the image has been built.
  ImageRecipeSystemsManagerAgent({
    required this.uninstallAfterBuild,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['uninstallAfterBuild'] = uninstallAfterBuild;
    return map;
  }

  factory ImageRecipeSystemsManagerAgent.fromMap(Map<String, dynamic> map) {
    return ImageRecipeSystemsManagerAgent(
      uninstallAfterBuild: map['uninstallAfterBuild'] as bool,
    );
  }
}
