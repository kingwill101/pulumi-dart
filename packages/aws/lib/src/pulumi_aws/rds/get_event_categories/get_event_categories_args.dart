// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getEventCategories.
class GetEventCategoriesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Type of source that will be generating the events. Valid options are db-instance, db-security-group, db-parameter-group, db-snapshot, db-cluster or db-cluster-snapshot.
  final Input<String>? sourceType;

  GetEventCategoriesArgs({
    this.region,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sourceTypeValue = sourceType;
    if (sourceTypeValue != null) {
      map['sourceType'] = sourceTypeValue;
    }
    return map;
  }

  factory GetEventCategoriesArgs.fromMap(Map<String, dynamic> map) {
    return GetEventCategoriesArgs(
      region: Input.asOptionalInput<String>(map['region']),
      sourceType: Input.asOptionalInput<String>(map['sourceType']),
    );
  }
}
