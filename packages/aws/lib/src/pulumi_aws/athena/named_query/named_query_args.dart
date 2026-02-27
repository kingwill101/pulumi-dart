// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for NamedQuery.
class NamedQueryArgs {
  /// Database to which the query belongs.
  final pulumi.Input<String> database;

  /// Brief explanation of the query. Maximum length of 1024.
  final pulumi.Input<String>? description;

  /// Plain language name for the query. Maximum length of 128.
  final pulumi.Input<String>? name;

  /// Text of the query itself. In other words, all query statements. Maximum length of 262144.
  final pulumi.Input<String> query;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Workgroup to which the query belongs. Defaults to `primary`
  final pulumi.Input<String>? workgroup;

  NamedQueryArgs({
    required this.database,
    this.description,
    this.name,
    required this.query,
    this.region,
    this.workgroup,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['query'] = query;
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

  factory NamedQueryArgs.fromMap(Map<String, dynamic> map) {
    return NamedQueryArgs(
      database: pulumi.Input.asInput<String>(map['database']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      query: pulumi.Input.asInput<String>(map['query']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      workgroup: pulumi.Input.asOptionalInput<String>(map['workgroup']),
    );
  }
}
