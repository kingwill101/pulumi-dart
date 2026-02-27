// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTypeProvider.
class GetTypeProviderArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> typeProvider;

  GetTypeProviderArgs({
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

  factory GetTypeProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetTypeProviderArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      typeProvider: pulumi.Input.asInput<String>(map['typeProvider']),
    );
  }
}
