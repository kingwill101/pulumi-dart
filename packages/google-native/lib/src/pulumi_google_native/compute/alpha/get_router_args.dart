// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getRouter.
class GetRouterArgs {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> router;

  GetRouterArgs({
    this.project,
    required this.region,
    required this.router,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    map['router'] = router;
    return map;
  }

  factory GetRouterArgs.fromMap(Map<String, dynamic> map) {
    return GetRouterArgs(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      router: Input.asInput<String>(map['router']),
    );
  }
}
