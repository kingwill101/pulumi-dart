// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getTypeProvider.
class GetTypeProviderArgs2 {
  final Input<String>? project;
  final Input<String> typeProvider;

  GetTypeProviderArgs2({
    this.project,
    required this.typeProvider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['typeProvider'] = typeProvider;
    return map;
  }

  factory GetTypeProviderArgs2.fromMap(Map<String, dynamic> map) {
    return GetTypeProviderArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      typeProvider: Input.asInput<String>(map['typeProvider']),
    );
  }
}
