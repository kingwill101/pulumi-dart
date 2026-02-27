import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_group_args.dart';

/// Provides an SSM Patch Group resource
class PatchGroup extends pulumi.CustomResource {
  /// The ID of the patch baseline to register the patch group with.
  late final pulumi.Output<String> baselineId;

  /// The name of the patch group that should be registered with the patch baseline.
  late final pulumi.Output<String> patchGroup;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  PatchGroup(
    String name, {
    PatchGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/patchGroup:PatchGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.baselineId = registerOutput<String>('baselineId');
    this.patchGroup = registerOutput<String>('patchGroup');
    this.region = registerOutput<String>('region');
  }
}
