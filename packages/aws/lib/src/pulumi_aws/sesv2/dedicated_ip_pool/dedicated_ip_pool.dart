import 'package:pulumi/pulumi.dart';
import 'dedicated_ip_pool_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Dedicated IP Pool.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Managed Pool
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Dedicated IP Pool using the `pool_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/dedicatedIpPool:DedicatedIpPool example my-pool
/// ```
class DedicatedIpPool extends CustomResource {
  /// ARN of the Dedicated IP Pool.
  late final Output<String> arn;

  /// Name of the dedicated IP pool.
  ///
  /// The following arguments are optional:
  late final Output<String> poolName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// IP pool scaling mode. Valid values: `STANDARD`, `MANAGED`. If omitted, the AWS API will default to a standard pool.
  late final Output<String> scalingMode;

  /// A map of tags to assign to the pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  DedicatedIpPool(
    String name, {
    DedicatedIpPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/dedicatedIpPool:DedicatedIpPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.poolName = registerOutput<String>('poolName');
    this.region = registerOutput<String>('region');
    this.scalingMode = registerOutput<String>('scalingMode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
