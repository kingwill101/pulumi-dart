import 'package:pulumi/pulumi.dart';
import 'resource_policy_args4.dart';

/// Provides a Glue resource policy. Only one can exist per region.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Resource Policy using the region where the resource resides. For example:
///
/// ```sh
/// $ pulumi import aws:glue/resourcePolicy:ResourcePolicy Test us-east-1
/// ```
class ResourcePolicy4 extends CustomResource {
  /// Indicates that you are using both methods to grant cross-account. Valid values are `TRUE` and `FALSE`. Note the provider will not perform drift detetction on this field as its not return on read.
  late final Output<String?> enableHybrid;

  /// The policy to be applied to the aws glue data catalog.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ResourcePolicy4(
    String name, {
    ResourcePolicyArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.enableHybrid = registerOutput<String?>('enableHybrid');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
