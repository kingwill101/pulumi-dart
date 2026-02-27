import 'package:pulumi/pulumi.dart';
import '../space_ownership_settings/space_ownership_settings.dart';
import '../space_space_settings/space_space_settings.dart';
import '../space_space_sharing_settings/space_space_sharing_settings.dart';
import 'space_args.dart';

/// Provides a SageMaker AI Space resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Spaces using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/space:Space test_space arn:aws:sagemaker:us-west-2:123456789012:space/domain-id/space-name
/// ```
class Space extends CustomResource {
  /// The space's Amazon Resource Name (ARN).
  late final Output<String> arn;

  /// The ID of the associated Domain.
  late final Output<String> domainId;

  /// The ID of the space's profile in the Amazon Elastic File System volume.
  late final Output<String> homeEfsFileSystemUid;

  /// A collection of ownership settings. Required if `space_sharing_settings` is set. See `ownership_settings` Block below.
  late final Output<SpaceOwnershipSettings?> ownershipSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The name of the space that appears in the SageMaker AI Studio UI.
  late final Output<String?> spaceDisplayName;

  /// The name of the space.
  late final Output<String> spaceName;

  /// A collection of space settings. See `space_settings` Block below.
  late final Output<SpaceSpaceSettings?> spaceSettings;

  /// A collection of space sharing settings. Required if `ownership_settings` is set. See `space_sharing_settings` Block below.
  late final Output<SpaceSpaceSharingSettings?> spaceSharingSettings;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Returns the URL of the space. If the space is created with Amazon Web Services IAM Identity Center (Successor to Amazon Web Services Single Sign-On) authentication, users can navigate to the URL after appending the respective redirect parameter for the application type to be federated through Amazon Web Services IAM Identity Center.
  late final Output<String> url;

  Space(
    String name, {
    SpaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/space:Space',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.domainId = registerOutput<String>('domainId');
    this.homeEfsFileSystemUid = registerOutput<String>('homeEfsFileSystemUid');
    this.ownershipSettings =
        registerOutput<SpaceOwnershipSettings?>('ownershipSettings');
    this.region = registerOutput<String>('region');
    this.spaceDisplayName = registerOutput<String?>('spaceDisplayName');
    this.spaceName = registerOutput<String>('spaceName');
    this.spaceSettings = registerOutput<SpaceSpaceSettings?>('spaceSettings');
    this.spaceSharingSettings =
        registerOutput<SpaceSpaceSharingSettings?>('spaceSharingSettings');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.url = registerOutput<String>('url');
  }
}
