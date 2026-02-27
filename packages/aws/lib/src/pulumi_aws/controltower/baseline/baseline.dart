import 'package:pulumi/pulumi.dart';
import '../baseline_parameters/baseline_parameters.dart';
import '../baseline_timeouts/baseline_timeouts.dart';
import 'baseline_args.dart';

/// Resource for managing an AWS Control Tower Baseline.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Control Tower Baseline using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:controltower/baseline:Baseline example arn:aws:controltower:us-east-1:012345678912:enabledbaseline/XALULM96QHI525UOC
/// ```
class Baseline extends CustomResource {
  /// ARN of the Baseline.
  late final Output<String> arn;

  /// The ARN of the baseline to be enabled.
  late final Output<String> baselineIdentifier;

  /// The version of the baseline to be enabled.
  late final Output<String> baselineVersion;
  late final Output<String> operationIdentifier;

  /// A list of key-value objects that specify enablement parameters, where key is a string and value is a document of any type. See Parameter below for details.
  late final Output<BaselineParameters?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tags to apply to the landing zone. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the landing zone, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ARN of the target on which the baseline will be enabled. Only OUs are supported as targets.
  ///
  /// The following arguments are optional:
  late final Output<String> targetIdentifier;
  late final Output<BaselineTimeouts?> timeouts;

  Baseline(
    String name, {
    BaselineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:controltower/baseline:Baseline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.baselineIdentifier = registerOutput<String>('baselineIdentifier');
    this.baselineVersion = registerOutput<String>('baselineVersion');
    this.operationIdentifier = registerOutput<String>('operationIdentifier');
    this.parameters = registerOutput<BaselineParameters?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetIdentifier = registerOutput<String>('targetIdentifier');
    this.timeouts = registerOutput<BaselineTimeouts?>('timeouts');
  }
}
