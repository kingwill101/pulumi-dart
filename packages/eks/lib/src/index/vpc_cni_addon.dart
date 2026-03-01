import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_cni_addon_args.dart';

/// VpcCniAddon manages the configuration of the Amazon VPC CNI plugin for Kubernetes by leveraging the EKS managed add-on.
/// For more information see: https://docs.aws.amazon.com/eks/latest/userguide/eks-add-ons.html
class VpcCniAddon extends pulumi.ComponentResource {
  /// Creates a new [VpcCniAddon].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcCniAddon]. {@macro pulumi_index_vpc_cni_addon_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcCniAddon(
    String name, {
    VpcCniAddonArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'eks:index:VpcCniAddon',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.ComponentResourceOptions(),
        );
}
