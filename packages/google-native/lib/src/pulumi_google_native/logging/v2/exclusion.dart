import 'package:pulumi/pulumi.dart';
import 'exclusion_args.dart';

/// Creates a new exclusion in the _Default sink in a specified parent resource. Only log entries belonging to that resource can be excluded. You can have up to 10 exclusions in a resource.
class Exclusion extends CustomResource {
  /// The creation timestamp of the exclusion.This field may not be present for older exclusions.
  late final Output<String> createTime;

  /// Optional. A description of this exclusion.
  late final Output<String> description;

  /// Optional. If set to True, then this exclusion is disabled and it does not exclude any log entries. You can update an exclusion to change the value of this field.
  late final Output<bool> disabled;

  /// An advanced logs filter (https://cloud.google.com/logging/docs/view/advanced-queries) that matches the log entries to be excluded. By using the sample function (https://cloud.google.com/logging/docs/view/advanced-queries#sample), you can exclude less than 100% of the matching log entries.For example, the following query matches 99% of low-severity log entries from Google Cloud Storage buckets:resource.type=gcs_bucket severity<ERROR sample(insertId, 0.99)
  late final Output<String> filter;

  /// A client-assigned identifier, such as "load-balancer-exclusion". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods. First character has to be alphanumeric.
  late final Output<String> name;
  late final Output<String> project;

  /// The last update timestamp of the exclusion.This field may not be present for older exclusions.
  late final Output<String> updateTime;

  Exclusion(
    String name, {
    ExclusionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:logging/v2:Exclusion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.disabled = registerOutput<bool>('disabled');
    this.filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
