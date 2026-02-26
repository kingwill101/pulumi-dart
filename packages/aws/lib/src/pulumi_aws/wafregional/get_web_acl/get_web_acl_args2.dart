// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getWebAcl.
class GetWebAclArgs2 {
  /// Name of the WAF Regional Web ACL.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  GetWebAclArgs2({
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetWebAclArgs2.fromMap(Map<String, dynamic> map) {
    return GetWebAclArgs2(
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
