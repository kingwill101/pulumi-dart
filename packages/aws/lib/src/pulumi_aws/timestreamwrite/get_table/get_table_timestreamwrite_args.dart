// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getTable.
class GetTableTimestreamwriteArgs {
  /// Name of the Timestream database.
  final pulumi.Input<String> databaseName;

  /// Name of the Timestream table.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  GetTableTimestreamwriteArgs({
    required this.databaseName,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['databaseName'] = databaseName;
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetTableTimestreamwriteArgs.fromMap(Map<String, dynamic> map) {
    return GetTableTimestreamwriteArgs(
      databaseName: pulumi.Input.asInput<String>(map['databaseName']),
      name: pulumi.Input.asInput<String>(map['name']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
