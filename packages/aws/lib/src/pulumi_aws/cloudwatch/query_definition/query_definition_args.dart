// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for QueryDefinition.
class QueryDefinitionArgs {
  /// Specific log groups to use with the query.
  final Input<List<String>>? logGroupNames;

  /// The name of the query.
  final Input<String>? name;

  /// The query to save. You can read more about CloudWatch Logs Query Syntax in the [documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL_QuerySyntax.html).
  final Input<String> queryString;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  QueryDefinitionArgs({
    this.logGroupNames,
    this.name,
    required this.queryString,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logGroupNamesValue = logGroupNames;
    if (logGroupNamesValue != null) {
      map['logGroupNames'] = logGroupNamesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['queryString'] = queryString;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory QueryDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return QueryDefinitionArgs(
      logGroupNames: Input.asOptionalInput<List<String>>(map['logGroupNames']),
      name: Input.asOptionalInput<String>(map['name']),
      queryString: Input.asInput<String>(map['queryString']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
