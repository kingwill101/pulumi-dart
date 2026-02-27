import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_swf_args.dart';

/// Provides an SWF Domain resource.
///
/// ## Example Usage
///
/// To register a basic SWF domain:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SWF Domains using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:swf/domain:Domain foo test-domain
/// ```
class DomainSwf extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN)
  late final pulumi.Output<String> arn;

  /// The domain description.
  late final pulumi.Output<String?> description;

  /// The name of the domain. If omitted, this provider will assign a random, unique name.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Length of time that SWF will continue to retain information about the workflow execution after the workflow execution is complete, must be between 0 and 90 days.
  late final pulumi.Output<String> workflowExecutionRetentionPeriodInDays;

  DomainSwf(
    String name, {
    DomainSwfArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:swf/domain:Domain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.workflowExecutionRetentionPeriodInDays =
        registerOutput<String>('workflowExecutionRetentionPeriodInDays');
  }
}
