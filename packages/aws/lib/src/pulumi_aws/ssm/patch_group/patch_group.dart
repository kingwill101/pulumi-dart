import 'package:pulumi/pulumi.dart';
import 'patch_group_args.dart';

/// Provides an SSM Patch Group resource
class PatchGroup extends CustomResource {
  /// The ID of the patch baseline to register the patch group with.
  late final Output<String> baselineId;

  /// The name of the patch group that should be registered with the patch baseline.
  late final Output<String> patchGroup;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  PatchGroup(
    String name, {
    PatchGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/patchGroup:PatchGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.baselineId = registerOutput<String>('baselineId');
    this.patchGroup = registerOutput<String>('patchGroup');
    this.region = registerOutput<String>('region');
  }
}
