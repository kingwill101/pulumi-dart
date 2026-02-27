import 'package:pulumi/pulumi.dart';
import 'usage_limit_args.dart';

/// Creates a new Amazon Redshift Usage Limit.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift usage limits using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/usageLimit:UsageLimit example example-id
/// ```
class UsageLimit extends CustomResource {
  /// The limit amount. If time-based, this amount is in minutes. If data-based, this amount is in terabytes (TB). The value must be a positive number.
  late final Output<int> amount;

  /// Amazon Resource Name (ARN) of the Redshift Usage Limit.
  late final Output<String> arn;

  /// The action that Amazon Redshift takes when the limit is reached. The default is `log`. Valid values are `log`, `emit-metric`, and `disable`.
  late final Output<String?> breachAction;

  /// The identifier of the cluster that you want to limit usage.
  late final Output<String> clusterIdentifier;

  /// The Amazon Redshift feature that you want to limit. Valid values are `spectrum`, `concurrency-scaling`, and `cross-region-datasharing`.
  late final Output<String> featureType;

  /// The type of limit. Depending on the feature type, this can be based on a time duration or data size. If FeatureType is `spectrum`, then LimitType must be `data-scanned`. If FeatureType is `concurrency-scaling`, then LimitType must be `time`. If FeatureType is `cross-region-datasharing`, then LimitType must be `data-scanned`. Valid values are `data-scanned`, and `time`.
  late final Output<String> limitType;

  /// The time period that the amount applies to. A weekly period begins on Sunday. The default is `monthly`. Valid values are `daily`, `weekly`, and `monthly`.
  late final Output<String?> period;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  UsageLimit(
    String name, {
    UsageLimitArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/usageLimit:UsageLimit',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.amount = registerOutput<int>('amount');
    this.arn = registerOutput<String>('arn');
    this.breachAction = registerOutput<String?>('breachAction');
    this.clusterIdentifier = registerOutput<String>('clusterIdentifier');
    this.featureType = registerOutput<String>('featureType');
    this.limitType = registerOutput<String>('limitType');
    this.period = registerOutput<String?>('period');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
