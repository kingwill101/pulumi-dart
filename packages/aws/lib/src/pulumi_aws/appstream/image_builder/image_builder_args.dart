// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../image_builder_access_endpoint/image_builder_access_endpoint.dart';
import '../image_builder_domain_join_info/image_builder_domain_join_info.dart';
import '../image_builder_vpc_config/image_builder_vpc_config.dart';

/// The set of arguments for ImageBuilder.
class ImageBuilderArgs {
  /// Set of interface VPC endpoint (interface endpoint) objects. Maximum of 4. See below.
  final Input<List<ImageBuilderAccessEndpoint>>? accessEndpoints;

  /// Version of the AppStream 2.0 agent to use for this image builder.
  final Input<String>? appstreamAgentVersion;

  /// Description to display.
  final Input<String>? description;

  /// Human-readable friendly name for the AppStream image builder.
  final Input<String>? displayName;

  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. See below.
  final Input<ImageBuilderDomainJoinInfo>? domainJoinInfo;

  /// Enables or disables default internet access for the image builder.
  final Input<bool>? enableDefaultInternetAccess;

  /// ARN of the IAM role to apply to the image builder.
  final Input<String>? iamRoleArn;

  /// ARN of the public, private, or shared image to use.
  final Input<String>? imageArn;

  /// Name of the image used to create the image builder.
  final Input<String>? imageName;

  /// Instance type to use when launching the image builder.
  final Input<String> instanceType;

  /// Unique name for the image builder.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block for the VPC configuration for the image builder. See below.
  final Input<ImageBuilderVpcConfig>? vpcConfig;

  ImageBuilderArgs({
    this.accessEndpoints,
    this.appstreamAgentVersion,
    this.description,
    this.displayName,
    this.domainJoinInfo,
    this.enableDefaultInternetAccess,
    this.iamRoleArn,
    this.imageArn,
    this.imageName,
    required this.instanceType,
    this.name,
    this.region,
    this.tags,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessEndpointsValue = accessEndpoints;
    if (accessEndpointsValue != null) {
      map['accessEndpoints'] = Input.mapOptionalInputValue<
              List<ImageBuilderAccessEndpoint>, List<Map<String, dynamic>>>(
          accessEndpointsValue,
          (value) => Input.encodeList<ImageBuilderAccessEndpoint,
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
      map['domainJoinInfo'] = Input.mapOptionalInputValue<
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
      map['vpcConfig'] = Input.mapOptionalInputValue<ImageBuilderVpcConfig,
          Map<String, dynamic>>(vpcConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory ImageBuilderArgs.fromMap(Map<String, dynamic> map) {
    return ImageBuilderArgs(
      accessEndpoints: Input.asOptionalInput<List<ImageBuilderAccessEndpoint>>(
          map['accessEndpoints']),
      appstreamAgentVersion:
          Input.asOptionalInput<String>(map['appstreamAgentVersion']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      domainJoinInfo: Input.asOptionalInput<ImageBuilderDomainJoinInfo>(
          map['domainJoinInfo']),
      enableDefaultInternetAccess:
          Input.asOptionalInput<bool>(map['enableDefaultInternetAccess']),
      iamRoleArn: Input.asOptionalInput<String>(map['iamRoleArn']),
      imageArn: Input.asOptionalInput<String>(map['imageArn']),
      imageName: Input.asOptionalInput<String>(map['imageName']),
      instanceType: Input.asInput<String>(map['instanceType']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      vpcConfig: Input.asOptionalInput<ImageBuilderVpcConfig>(map['vpcConfig']),
    );
  }
}
