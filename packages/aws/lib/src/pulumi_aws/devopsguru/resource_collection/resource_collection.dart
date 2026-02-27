import 'package:pulumi/pulumi.dart';
import '../resource_collection_cloudformation/resource_collection_cloudformation.dart';
import '../resource_collection_tags/resource_collection_tags.dart';
import 'resource_collection_args.dart';

/// Resource for managing an AWS DevOps Guru Resource Collection.
///
/// > Only one type of resource collection (All Account Resources, CloudFormation, or Tags) can be enabled in an account at a time. To avoid persistent differences, this resource should be defined only once.
///
/// ## Example Usage
///
/// ### All Account Resources
///
///
///
/// ### CloudFormation Stacks
///
///
///
/// ### Tags
///
///
///
/// ### Tags All Resources
///
/// To analyze all resources with the `app_boundary_key` regardless of the corresponding tag value, set `tag_values` to `["*"]`.
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DevOps Guru Resource Collection using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:devopsguru/resourceCollection:ResourceCollection example AWS_CLOUD_FORMATION
/// ```
class ResourceCollection extends CustomResource {
  /// A collection of AWS CloudFormation stacks. See `cloudformation` below for additional details.
  late final Output<ResourceCollectionCloudformation?> cloudformation;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// AWS tags used to filter the resources in the resource collection. See `tags` below for additional details.
  late final Output<ResourceCollectionTags?> tags;

  /// Type of AWS resource collection to create. Valid values are `AWS_CLOUD_FORMATION`, `AWS_SERVICE`, and `AWS_TAGS`.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  ResourceCollection(
    String name, {
    ResourceCollectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:devopsguru/resourceCollection:ResourceCollection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cloudformation =
        registerOutput<ResourceCollectionCloudformation?>('cloudformation');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<ResourceCollectionTags?>('tags');
    this.type = registerOutput<String>('type');
  }
}
