import 'package:pulumi/pulumi.dart' as pulumi;
import 'readiness_check_args.dart';

/// Provides an AWS Route 53 Recovery Readiness Readiness Check.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Route53 Recovery Readiness readiness checks using the readiness check name. For example:
///
/// ```sh
/// $ pulumi import aws:route53recoveryreadiness/readinessCheck:ReadinessCheck my-cw-alarm-check example
/// ```
class ReadinessCheck extends pulumi.CustomResource {
  /// ARN of the readiness_check
  late final pulumi.Output<String> arn;

  /// Unique name describing the readiness check.
  late final pulumi.Output<String> readinessCheckName;

  /// Name describing the resource set that will be monitored for readiness.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> resourceSetName;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  ReadinessCheck(
    String name, {
    ReadinessCheckArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:route53recoveryreadiness/readinessCheck:ReadinessCheck',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.readinessCheckName = registerOutput<String>('readinessCheckName');
    this.resourceSetName = registerOutput<String>('resourceSetName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
