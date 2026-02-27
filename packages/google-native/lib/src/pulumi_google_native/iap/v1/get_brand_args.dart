// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getBrand.
class GetBrandArgs {
  final Input<String> brandId;
  final Input<String>? project;

  GetBrandArgs({
    required this.brandId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['brandId'] = brandId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetBrandArgs.fromMap(Map<String, dynamic> map) {
    return GetBrandArgs(
      brandId: Input.asInput<String>(map['brandId']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
