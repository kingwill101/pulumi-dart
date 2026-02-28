// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_builder_access_endpoint.dart';
import 'image_builder_domain_join_info.dart';
import 'image_builder_vpc_config.dart';

/// {@template pulumi_appstream_image_builder_image_builder_args_doc}
/// The set of arguments for ImageBuilder.
/// {@endtemplate}
/// {@macro pulumi_appstream_image_builder_image_builder_args_doc}
class ImageBuilderArgs {
  /// Set of interface VPC endpoint (interface endpoint) objects. Maximum of 4. See below.
  final pulumi.Input<List<ImageBuilderAccessEndpoint>>? accessEndpoints;

  /// Version of the AppStream 2.0 agent to use for this image builder.
  final pulumi.Input<String>? appstreamAgentVersion;

  /// Description to display.
  final pulumi.Input<String>? description;

  /// Human-readable friendly name for the AppStream image builder.
  final pulumi.Input<String>? displayName;

  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. See below.
  final pulumi.Input<ImageBuilderDomainJoinInfo>? domainJoinInfo;

  /// Enables or disables default internet access for the image builder.
  final pulumi.Input<bool>? enableDefaultInternetAccess;

  /// ARN of the IAM role to apply to the image builder.
  final pulumi.Input<String>? iamRoleArn;

  /// ARN of the public, private, or shared image to use.
  final pulumi.Input<String>? imageArn;

  /// Name of the image used to create the image builder.
  final pulumi.Input<String>? imageName;

  /// Instance type to use when launching the image builder.
  final pulumi.Input<String> instanceType;

  /// Unique name for the image builder.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block for the VPC configuration for the image builder. See below.
  final pulumi.Input<ImageBuilderVpcConfig>? vpcConfig;

  /// Creates a new [ImageBuilderArgs].
  /// [accessEndpoints] Set of interface VPC endpoint (interface endpoint) objects. Maximum of 4. See below.
  /// [appstreamAgentVersion] Version of the AppStream 2.0 agent to use for this image builder.
  /// [description] Description to display.
  /// [displayName] Human-readable friendly name for the AppStream image builder.
  /// [domainJoinInfo] Configuration block for the name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. See below.
  /// [enableDefaultInternetAccess] Enables or disables default internet access for the image builder.
  /// [iamRoleArn] ARN of the IAM role to apply to the image builder.
  /// [imageArn] ARN of the public, private, or shared image to use.
  /// [imageName] Name of the image used to create the image builder.
  /// [instanceType] Instance type to use when launching the image builder.
  /// [name] Unique name for the image builder.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcConfig] Configuration block for the VPC configuration for the image builder. See below.
  ImageBuilderArgs({
    List<ImageBuilderAccessEndpoint>? accessEndpoints,
    String? appstreamAgentVersion,
    String? description,
    String? displayName,
    ImageBuilderDomainJoinInfo? domainJoinInfo,
    bool? enableDefaultInternetAccess,
    String? iamRoleArn,
    String? imageArn,
    String? imageName,
    required String instanceType,
    String? name,
    String? region,
    Map<String, String>? tags,
    ImageBuilderVpcConfig? vpcConfig,
  })  : accessEndpoints =
            pulumi.Input.asOptionalInput<List<ImageBuilderAccessEndpoint>>(
                accessEndpoints),
        appstreamAgentVersion =
            pulumi.Input.asOptionalInput<String>(appstreamAgentVersion),
        description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        domainJoinInfo =
            pulumi.Input.asOptionalInput<ImageBuilderDomainJoinInfo>(
                domainJoinInfo),
        enableDefaultInternetAccess =
            pulumi.Input.asOptionalInput<bool>(enableDefaultInternetAccess),
        iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
        imageArn = pulumi.Input.asOptionalInput<String>(imageArn),
        imageName = pulumi.Input.asOptionalInput<String>(imageName),
        instanceType = pulumi.Input.asInput<String>(instanceType),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        vpcConfig =
            pulumi.Input.asOptionalInput<ImageBuilderVpcConfig>(vpcConfig);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessEndpointsValue = accessEndpoints;
    if (accessEndpointsValue != null) {
      map['accessEndpoints'] = pulumi.Input.mapOptionalInputValue<
              List<ImageBuilderAccessEndpoint>, List<Map<String, dynamic>>>(
          accessEndpointsValue,
          (value) => pulumi.Input.encodeList<ImageBuilderAccessEndpoint,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final appstreamAgentVersionValue = appstreamAgentVersion;
    if (appstreamAgentVersionValue != null) {
      map['appstreamAgentVersion'] = appstreamAgentVersionValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final domainJoinInfoValue = domainJoinInfo;
    if (domainJoinInfoValue != null) {
      map['domainJoinInfo'] = pulumi.Input.mapOptionalInputValue<
          ImageBuilderDomainJoinInfo,
          Map<String, dynamic>>(domainJoinInfoValue, (value) => value.toMap());
    }
    final enableDefaultInternetAccessValue = enableDefaultInternetAccess;
    if (enableDefaultInternetAccessValue != null) {
      map['enableDefaultInternetAccess'] = enableDefaultInternetAccessValue;
    }
    final iamRoleArnValue = iamRoleArn;
    if (iamRoleArnValue != null) {
      map['iamRoleArn'] = iamRoleArnValue;
    }
    final imageArnValue = imageArn;
    if (imageArnValue != null) {
      map['imageArn'] = imageArnValue;
    }
    final imageNameValue = imageName;
    if (imageNameValue != null) {
      map['imageName'] = imageNameValue;
    }
    map['instanceType'] = instanceType;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = pulumi.Input.mapOptionalInputValue<
          ImageBuilderVpcConfig,
          Map<String, dynamic>>(vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ImageBuilderArgs.fromMap(Map<String, dynamic> map) {
    return ImageBuilderArgs(
      accessEndpoints: map['accessEndpoints'] == null
          ? null
          : pulumi.Input.decodeList<ImageBuilderAccessEndpoint>(
              map['accessEndpoints'],
              (value) => ImageBuilderAccessEndpoint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      appstreamAgentVersion: map['appstreamAgentVersion'] == null
          ? null
          : map['appstreamAgentVersion'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      domainJoinInfo: map['domainJoinInfo'] == null
          ? null
          : ImageBuilderDomainJoinInfo.fromMap(
              (map['domainJoinInfo'] as Map).cast<String, dynamic>()),
      enableDefaultInternetAccess: map['enableDefaultInternetAccess'] == null
          ? null
          : map['enableDefaultInternetAccess'] as bool,
      iamRoleArn:
          map['iamRoleArn'] == null ? null : map['iamRoleArn'] as String,
      imageArn: map['imageArn'] == null ? null : map['imageArn'] as String,
      imageName: map['imageName'] == null ? null : map['imageName'] as String,
      instanceType: map['instanceType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      vpcConfig: map['vpcConfig'] == null
          ? null
          : ImageBuilderVpcConfig.fromMap(
              (map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
