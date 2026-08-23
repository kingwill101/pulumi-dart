// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Solution Version Properties
class SolutionVersionProperties {
  /// App components spec
  final pulumi.Input<dynamic> specification;

  /// Creates a new [SolutionVersionProperties].
  /// [specification] App components spec
  const SolutionVersionProperties({
    required this.specification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'specification': specification,
    };
  }

  factory SolutionVersionProperties.fromMap(Map<String, dynamic> map) {
    return SolutionVersionProperties(
      specification: pulumi.Input.fromValue(map['specification']),
    );
  }
}
