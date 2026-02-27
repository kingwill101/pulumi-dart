// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getControlProjectIntelligenceConfig.
class GetControlProjectIntelligenceConfigArgs {
  /// The name or number of the GCP project.
  final pulumi.Input<String> name;

  GetControlProjectIntelligenceConfigArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetControlProjectIntelligenceConfigArgs.fromMap(
      Map<String, dynamic> map) {
    return GetControlProjectIntelligenceConfigArgs(
      name: pulumi.Input.asInput<String>(map['name']),
    );
  }
}
