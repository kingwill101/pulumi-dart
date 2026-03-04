// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_rds_get_event_categories_get_event_categories_args_doc}
/// Arguments for getEventCategories.
/// {@endtemplate}
/// {@macro pulumi_rds_get_event_categories_get_event_categories_args_doc}
class GetEventCategoriesArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Type of source that will be generating the events. Valid options are db-instance, db-security-group, db-parameter-group, db-snapshot, db-cluster or db-cluster-snapshot.
  final pulumi.Input<String>? sourceType;

  /// Creates a new [GetEventCategoriesArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sourceType] Type of source that will be generating the events. Valid options are db-instance, db-security-group, db-parameter-group, db-snapshot, db-cluster or db-cluster-snapshot.
  GetEventCategoriesArgs({this.region, this.sourceType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'region': ?region, 'sourceType': ?sourceType};
  }

  factory GetEventCategoriesArgs.fromMap(Map<String, dynamic> map) {
    return GetEventCategoriesArgs(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceType: (() {
        final guardedValue = map['sourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
