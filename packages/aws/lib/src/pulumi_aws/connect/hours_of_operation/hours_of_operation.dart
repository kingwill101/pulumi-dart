import 'package:pulumi/pulumi.dart' as pulumi;
import '../hours_of_operation_config/hours_of_operation_config.dart';
import 'hours_of_operation_args.dart';

/// Provides an Amazon Connect Hours of Operation resource. For more information see
/// [Amazon Connect: Getting Started](https://docs.aws.amazon.com/connect/latest/adminguide/amazon-connect-get-started.html)
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Amazon Connect Hours of Operations using the `instance_id` and `hours_of_operation_id` separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:connect/hoursOfOperation:HoursOfOperation example f1288a1f-6193-445a-b47e-af739b2:c1d4e5f6-1b3c-1b3c-1b3c-c1d4e5f6c1d4e5
/// ```
class HoursOfOperation extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the Hours of Operation.
  late final pulumi.Output<String> arn;

  /// One or more config blocks which define the configuration information for the hours of operation: day, start time, and end time . Config blocks are documented below.
  late final pulumi.Output<List<HoursOfOperationConfig>> configs;

  /// Specifies the description of the Hours of Operation.
  late final pulumi.Output<String?> description;

  /// The identifier for the hours of operation.
  late final pulumi.Output<String> hoursOfOperationId;

  /// Specifies the identifier of the hosting Amazon Connect Instance.
  late final pulumi.Output<String> instanceId;

  /// Specifies the name of the Hours of Operation.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Tags to apply to the Hours of Operation. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Specifies the time zone of the Hours of Operation.
  late final pulumi.Output<String> timeZone;

  HoursOfOperation(
    String name, {
    HoursOfOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:connect/hoursOfOperation:HoursOfOperation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configs = registerOutput<List<HoursOfOperationConfig>>('configs');
    this.description = registerOutput<String?>('description');
    this.hoursOfOperationId = registerOutput<String>('hoursOfOperationId');
    this.instanceId = registerOutput<String>('instanceId');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeZone = registerOutput<String>('timeZone');
  }
}
