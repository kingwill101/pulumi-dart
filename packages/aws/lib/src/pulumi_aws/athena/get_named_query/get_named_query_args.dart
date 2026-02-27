// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getNamedQuery.
class GetNamedQueryArgs {
  /// The plain language name for the query. Maximum length of 128.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The workgroup to which the query belongs. Defaults to `primary`.
  final Input<String>? workgroup;

  GetNamedQueryArgs({
    required this.name,
    this.region,
    this.workgroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final workgroupValue = workgroup;
    if (workgroupValue != null) {
      map['workgroup'] = workgroupValue;
    }
    return map;
  }

  factory GetNamedQueryArgs.fromMap(Map<String, dynamic> map) {
    return GetNamedQueryArgs(
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      workgroup: Input.asOptionalInput<String>(map['workgroup']),
    );
  }
}
