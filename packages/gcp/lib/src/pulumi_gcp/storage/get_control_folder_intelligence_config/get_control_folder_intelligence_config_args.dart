// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getControlFolderIntelligenceConfig.
class GetControlFolderIntelligenceConfigArgs {
  /// The number of GCP folder.
  final Input<String> name;

  GetControlFolderIntelligenceConfigArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetControlFolderIntelligenceConfigArgs.fromMap(
      Map<String, dynamic> map) {
    return GetControlFolderIntelligenceConfigArgs(
      name: Input.asInput<String>(map['name']),
    );
  }
}
