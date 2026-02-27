import 'package:pulumi/pulumi.dart';
import '../image_builder_access_endpoint/image_builder_access_endpoint.dart';
import '../image_builder_domain_join_info/image_builder_domain_join_info.dart';
import '../image_builder_vpc_config/image_builder_vpc_config.dart';
import 'image_builder_args.dart';

/// Provides an AppStream image builder.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appstream.ImageBuilder` using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appstream/imageBuilder:ImageBuilder example imageBuilderExample
/// ```
class ImageBuilder extends CustomResource {
  /// Set of interface VPC endpoint (interface endpoint) objects. Maximum of 4. See below.
  late final Output<List<ImageBuilderAccessEndpoint>?> accessEndpoints;

  /// Version of the AppStream 2.0 agent to use for this image builder.
  late final Output<String> appstreamAgentVersion;

  /// ARN of the appstream image builder.
  late final Output<String> arn;

  /// Date and time, in UTC and extended RFC 3339 format, when the image builder was created.
  late final Output<String> createdTime;

  /// Description to display.
  late final Output<String> description;

  /// Human-readable friendly name for the AppStream image builder.
  late final Output<String> displayName;

  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. See below.
  late final Output<ImageBuilderDomainJoinInfo> domainJoinInfo;

  /// Enables or disables default internet access for the image builder.
  late final Output<bool> enableDefaultInternetAccess;

  /// ARN of the IAM role to apply to the image builder.
  late final Output<String> iamRoleArn;

  /// ARN of the public, private, or shared image to use.
  late final Output<String> imageArn;

  /// Name of the image used to create the image builder.
  late final Output<String> imageName;

  /// Instance type to use when launching the image builder.
  late final Output<String> instanceType;

  /// Unique name for the image builder.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// State of the image builder. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/appstream2/latest/APIReference/API_ImageBuilder.html#AppStream2-Type-ImageBuilder-State).
  late final Output<String> state;

  /// Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block for the VPC configuration for the image builder. See below.
  late final Output<ImageBuilderVpcConfig> vpcConfig;

  ImageBuilder(
    String name, {
    ImageBuilderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appstream/imageBuilder:ImageBuilder',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessEndpoints =
        registerOutput<List<ImageBuilderAccessEndpoint>?>('accessEndpoints');
    this.appstreamAgentVersion =
        registerOutput<String>('appstreamAgentVersion');
    this.arn = registerOutput<String>('arn');
    this.createdTime = registerOutput<String>('createdTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.domainJoinInfo =
        registerOutput<ImageBuilderDomainJoinInfo>('domainJoinInfo');
    this.enableDefaultInternetAccess =
        registerOutput<bool>('enableDefaultInternetAccess');
    this.iamRoleArn = registerOutput<String>('iamRoleArn');
    this.imageArn = registerOutput<String>('imageArn');
    this.imageName = registerOutput<String>('imageName');
    this.instanceType = registerOutput<String>('instanceType');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfig = registerOutput<ImageBuilderVpcConfig>('vpcConfig');
  }
}
