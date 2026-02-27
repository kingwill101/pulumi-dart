import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_args.dart';

/// Provides an Amazon Inspector Classic Resource Group.
class ResourceGroup extends pulumi.CustomResource {
  /// The resource group ARN.
  late final pulumi.Output<String> arn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of tags that are used to select the EC2 instances to be included in an Amazon Inspector assessment target.
  late final pulumi.Output<Map<String, String>> tags;

  ResourceGroup(
    String name, {
    ResourceGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:inspector/resourceGroup:ResourceGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>>('tags');
  }
}
