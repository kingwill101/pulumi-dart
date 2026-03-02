// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LaunchGroup {
  /// Specifies the description of the launch group.
  final pulumi.Input<String>? description;
  /// Specifies the name of the feature that the launch is using.
  final pulumi.Input<String> feature;
  /// Specifies the name of the lahnch group.
  final pulumi.Input<String> name;
  /// Specifies the feature variation to use for this launch group.
  final pulumi.Input<String> variation;

  /// Creates a new [LaunchGroup].
  /// [description] Specifies the description of the launch group.
  /// [feature] Specifies the name of the feature that the launch is using.
  /// [name] Specifies the name of the lahnch group.
  /// [variation] Specifies the feature variation to use for this launch group.
  LaunchGroup({
    this.description,
    required this.feature,
    required this.name,
    required this.variation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'feature': feature,
      'name': name,
      'variation': variation,
    };
  }

  factory LaunchGroup.fromMap(Map<String, dynamic> map) {
    return LaunchGroup(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      feature: (map['feature'] as String).input(),
      name: (map['name'] as String).input(),
      variation: (map['variation'] as String).input(),
    );
  }
}

