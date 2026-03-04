// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workgroup_configuration.dart';

/// {@template pulumi_athena_workgroup_workgroup_args_doc}
/// The set of arguments for Workgroup.
/// {@endtemplate}
/// {@macro pulumi_athena_workgroup_workgroup_args_doc}
class WorkgroupArgs {
  /// Configuration block with various settings for the workgroup. Documented below.
  final pulumi.Input<WorkgroupConfiguration>? configuration;

  /// Description of the workgroup.
  final pulumi.Input<String>? description;

  /// Option to delete the workgroup and its contents even if the workgroup contains any named queries.
  final pulumi.Input<bool>? forceDestroy;

  /// Name of the workgroup.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// State of the workgroup. Valid values are `DISABLED` or `ENABLED`. Defaults to `ENABLED`.
  final pulumi.Input<String>? state;

  /// Key-value map of resource tags for the workgroup. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkgroupArgs].
  /// [configuration] Configuration block with various settings for the workgroup. Documented below.
  /// [description] Description of the workgroup.
  /// [forceDestroy] Option to delete the workgroup and its contents even if the workgroup contains any named queries.
  /// [name] Name of the workgroup.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [state] State of the workgroup. Valid values are `DISABLED` or `ENABLED`. Defaults to `ENABLED`.
  /// [tags] Key-value map of resource tags for the workgroup. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  WorkgroupArgs({
    this.configuration,
    this.description,
    this.forceDestroy,
    this.name,
    this.region,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration':
          ?pulumi.Input.mapOptionalInputValue<
            WorkgroupConfiguration,
            Map<String, dynamic>
          >(configuration, (value) => value.toMap()),
      'description': ?description,
      'forceDestroy': ?forceDestroy,
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory WorkgroupArgs.fromMap(Map<String, dynamic> map) {
    return WorkgroupArgs(
      configuration: (() {
        final guardedValue = map['configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkgroupConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forceDestroy: (() {
        final guardedValue = map['forceDestroy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
