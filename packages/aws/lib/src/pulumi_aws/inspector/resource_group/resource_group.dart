import 'package:pulumi/pulumi.dart';
import 'resource_group_args.dart';

/// Provides an Amazon Inspector Classic Resource Group.
class ResourceGroup extends CustomResource {
  /// The resource group ARN.
  late final Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of tags that are used to select the EC2 instances to be included in an Amazon Inspector assessment target.
  late final Output<Map<String, String>> tags;

  ResourceGroup(
    String name, {
    ResourceGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:inspector/resourceGroup:ResourceGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>>('tags');
  }
}
