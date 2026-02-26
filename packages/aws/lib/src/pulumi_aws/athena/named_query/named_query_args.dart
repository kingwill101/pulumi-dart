// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for NamedQuery.
class NamedQueryArgs {
  /// Database to which the query belongs.
  final Input<String> database;

  /// Brief explanation of the query. Maximum length of 1024.
  final Input<String>? description;

  /// Plain language name for the query. Maximum length of 128.
  final Input<String>? name;

  /// Text of the query itself. In other words, all query statements. Maximum length of 262144.
  final Input<String> query;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Workgroup to which the query belongs. Defaults to <span pulumi-lang-nodejs="`primary`" pulumi-lang-dotnet="`Primary`" pulumi-lang-go="`primary`" pulumi-lang-python="`primary`" pulumi-lang-yaml="`primary`" pulumi-lang-java="`primary`">`primary`</span>
  final Input<String>? workgroup;

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
      database: Input.asInput<String>(map['database']),
      description: Input.asOptionalInput<String>(map['description']),
      name: Input.asOptionalInput<String>(map['name']),
      query: Input.asInput<String>(map['query']),
      region: Input.asOptionalInput<String>(map['region']),
      workgroup: Input.asOptionalInput<String>(map['workgroup']),
    );
  }
}
