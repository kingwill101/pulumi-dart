// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageRecipeSystemsManagerAgent {
  /// Whether to remove the Systems Manager Agent after the image has been built.
  final pulumi.Input<bool> uninstallAfterBuild;

  /// Creates a new [ImageRecipeSystemsManagerAgent].
  /// [uninstallAfterBuild] Whether to remove the Systems Manager Agent after the image has been built.
  const ImageRecipeSystemsManagerAgent({
    required this.uninstallAfterBuild,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uninstallAfterBuild': uninstallAfterBuild,
    };
  }

  factory ImageRecipeSystemsManagerAgent.fromMap(Map<String, dynamic> map) {
    return ImageRecipeSystemsManagerAgent(
      uninstallAfterBuild: pulumi.Input.fromValue(map['uninstallAfterBuild'] as bool),
    );
  }
}

