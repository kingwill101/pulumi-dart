import 'package:pulumi/pulumi.dart' as pulumi;
import 'usage_limit_redshiftserverless_args.dart';

/// Creates a new Amazon Redshift Serverless Usage Limit.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Usage Limits using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/usageLimit:UsageLimit example example-id
/// ```
class UsageLimitRedshiftserverless extends pulumi.CustomResource {
  /// The limit amount. If time-based, this amount is in Redshift Processing Units (RPU) consumed per hour. If data-based, this amount is in terabytes (TB) of data transferred between Regions in cross-account sharing. The value must be a positive number.
  late final pulumi.Output<int> amount;

  /// Amazon Resource Name (ARN) of the Redshift Serverless Usage Limit.
  late final pulumi.Output<String> arn;

  /// The action that Amazon Redshift Serverless takes when the limit is reached. Valid values are `log`, `emit-metric`, and `deactivate`. The default is `log`.
  late final pulumi.Output<String?> breachAction;

  /// The time period that the amount applies to. A weekly period begins on Sunday. Valid values are `daily`, `weekly`, and `monthly`. The default is `monthly`.
  late final pulumi.Output<String?> period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the Amazon Redshift Serverless resource to create the usage limit for.
  late final pulumi.Output<String> resourceArn;

  /// The type of Amazon Redshift Serverless usage to create a usage limit for. Valid values are `serverless-compute` or `cross-region-datasharing`.
  late final pulumi.Output<String> usageType;

  UsageLimitRedshiftserverless(
    String name, {
    UsageLimitRedshiftserverlessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/usageLimit:UsageLimit',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.amount = registerOutput<int>('amount');
    this.arn = registerOutput<String>('arn');
    this.breachAction = registerOutput<String?>('breachAction');
    this.period = registerOutput<String?>('period');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
    this.usageType = registerOutput<String>('usageType');
  }
}
