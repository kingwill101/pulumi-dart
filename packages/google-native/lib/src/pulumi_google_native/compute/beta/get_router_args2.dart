// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getRouter.
class GetRouterArgs2 {
  final Input<String>? project;
  final Input<String> region;
  final Input<String> router;

  GetRouterArgs2({
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

  factory GetRouterArgs2.fromMap(Map<String, dynamic> map) {
    return GetRouterArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      router: Input.asInput<String>(map['router']),
    );
  }
}
