// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSubnetGroup.
class GetSubnetGroupRedshiftArgs {
  /// Name of the cluster subnet group for which information is requested.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Tags associated to the Subnet Group
  final pulumi.Input<Map<String, String>>? tags;

  GetSubnetGroupRedshiftArgs({
    required this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetSubnetGroupRedshiftArgs.fromMap(Map<String, dynamic> map) {
    return GetSubnetGroupRedshiftArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
