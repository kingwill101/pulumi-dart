// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getInstance.
class GetInstanceRdsArgs {
  /// Name of the RDS instance.
  final pulumi.Input<String>? dbInstanceIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match a pair on the desired instance.
  final pulumi.Input<Map<String, String>>? tags;

  GetInstanceRdsArgs({
    this.dbInstanceIdentifier,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dbInstanceIdentifierValue = dbInstanceIdentifier;
    if (dbInstanceIdentifierValue != null) {
      map['dbInstanceIdentifier'] = dbInstanceIdentifierValue;
    }
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

  factory GetInstanceRdsArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceRdsArgs(
      dbInstanceIdentifier:
          pulumi.Input.asOptionalInput<String>(map['dbInstanceIdentifier']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
