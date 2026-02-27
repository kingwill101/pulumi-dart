import 'package:pulumi/pulumi.dart';
import 'tape_pool_args.dart';

/// Manages an AWS Storage Gateway Tape Pool.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.storagegateway.TapePool` using the volume Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/tapePool:TapePool example arn:aws:storagegateway:us-east-1:123456789012:tapepool/pool-12345678
/// ```
class TapePool extends CustomResource {
  /// Volume Amazon Resource Name (ARN), e.g., `aws_storagegateway_tape_pool.example arn:aws:storagegateway:us-east-1:123456789012:tapepool/pool-12345678`.
  late final Output<String> arn;

  /// The name of the new custom tape pool.
  late final Output<String> poolName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tape retention lock time is set in days. Tape retention lock can be enabled for up to 100 years (36,500 days). Default value is 0.
  late final Output<int?> retentionLockTimeInDays;

  /// Tape retention lock can be configured in two modes. When configured in governance mode, AWS accounts with specific IAM permissions are authorized to remove the tape retention lock from archived virtual tapes. When configured in compliance mode, the tape retention lock cannot be removed by any user, including the root AWS account. Possible values are `COMPLIANCE`, `GOVERNANCE`, and `NONE`. Default value is `NONE`.
  late final Output<String?> retentionLockType;

  /// The storage class that is associated with the new custom pool. When you use your backup application to eject the tape, the tape is archived directly into the storage class that corresponds to the pool. Possible values are `DEEP_ARCHIVE` or `GLACIER`.
  late final Output<String> storageClass;

  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  TapePool(
    String name, {
    TapePoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/tapePool:TapePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.poolName = registerOutput<String>('poolName');
    this.region = registerOutput<String>('region');
    this.retentionLockTimeInDays =
        registerOutput<int?>('retentionLockTimeInDays');
    this.retentionLockType = registerOutput<String?>('retentionLockType');
    this.storageClass = registerOutput<String>('storageClass');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
