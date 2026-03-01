// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_builder_access_endpoint.dart';
import 'image_builder_domain_join_info.dart';
import 'image_builder_vpc_config.dart';

/// Input properties used for looking up and filtering ImageBuilder resources.
class ImageBuilderState {
  /// Set of interface VPC endpoint (interface endpoint) objects. Maximum of 4. See below.
  final pulumi.Input<List<ImageBuilderAccessEndpoint>>? accessEndpoints;
  /// Version of the AppStream 2.0 agent to use for this image builder.
  final pulumi.Input<String>? appstreamAgentVersion;
  /// ARN of the appstream image builder.
  final pulumi.Input<String>? arn;
  /// Date and time, in UTC and extended RFC 3339 format, when the image builder was created.
  final pulumi.Input<String>? createdTime;
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
  final pulumi.Input<String>? instanceType;
  /// Unique name for the image builder.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// State of the image builder. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/appstream2/latest/APIReference/API_ImageBuilder.html#AppStream2-Type-ImageBuilder-State).
  final pulumi.Input<String>? state;
  /// Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block for the VPC configuration for the image builder. See below.
  final pulumi.Input<ImageBuilderVpcConfig>? vpcConfig;

  /// Creates a new [ImageBuilderState].
  /// [accessEndpoints] Set of interface VPC endpoint (interface endpoint) objects. Maximum of 4. See below.
  /// [appstreamAgentVersion] Version of the AppStream 2.0 agent to use for this image builder.
  /// [arn] ARN of the appstream image builder.
  /// [createdTime] Date and time, in UTC and extended RFC 3339 format, when the image builder was created.
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
  /// [state] State of the image builder. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/appstream2/latest/APIReference/API_ImageBuilder.html#AppStream2-Type-ImageBuilder-State).
  /// [tags] Map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [vpcConfig] Configuration block for the VPC configuration for the image builder. See below.
  ImageBuilderState({
    pulumi.Output<List<ImageBuilderAccessEndpoint>>? accessEndpoints,
    pulumi.Output<String>? appstreamAgentVersion,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? createdTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<ImageBuilderDomainJoinInfo>? domainJoinInfo,
    pulumi.Output<bool>? enableDefaultInternetAccess,
    pulumi.Output<String>? iamRoleArn,
    pulumi.Output<String>? imageArn,
    pulumi.Output<String>? imageName,
    pulumi.Output<String>? instanceType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? state,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ImageBuilderVpcConfig>? vpcConfig,
  }) :
      accessEndpoints = pulumi.Input.asOptionalInput<List<ImageBuilderAccessEndpoint>>(accessEndpoints),
      appstreamAgentVersion = pulumi.Input.asOptionalInput<String>(appstreamAgentVersion),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      createdTime = pulumi.Input.asOptionalInput<String>(createdTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      domainJoinInfo = pulumi.Input.asOptionalInput<ImageBuilderDomainJoinInfo>(domainJoinInfo),
      enableDefaultInternetAccess = pulumi.Input.asOptionalInput<bool>(enableDefaultInternetAccess),
      iamRoleArn = pulumi.Input.asOptionalInput<String>(iamRoleArn),
      imageArn = pulumi.Input.asOptionalInput<String>(imageArn),
      imageName = pulumi.Input.asOptionalInput<String>(imageName),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      state = pulumi.Input.asOptionalInput<String>(state),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      vpcConfig = pulumi.Input.asOptionalInput<ImageBuilderVpcConfig>(vpcConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ImageBuilderAccessEndpoint>, List<Map<String, dynamic>>>(accessEndpoints, (value) => pulumi.Input.encodeList<ImageBuilderAccessEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'appstreamAgentVersion': ?appstreamAgentVersion,
      'arn': ?arn,
      'createdTime': ?createdTime,
      'description': ?description,
      'displayName': ?displayName,
      'domainJoinInfo': ?pulumi.Input.mapOptionalInputValue<ImageBuilderDomainJoinInfo, Map<String, dynamic>>(domainJoinInfo, (value) => value.toMap()),
      'enableDefaultInternetAccess': ?enableDefaultInternetAccess,
      'iamRoleArn': ?iamRoleArn,
      'imageArn': ?imageArn,
      'imageName': ?imageName,
      'instanceType': ?instanceType,
      'name': ?name,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<ImageBuilderVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory ImageBuilderState.fromMap(Map<String, dynamic> map) {
    return ImageBuilderState(
      accessEndpoints: map['accessEndpoints'] == null ? null : pulumi.Output.create<List<ImageBuilderAccessEndpoint>>(pulumi.Input.decodeList<ImageBuilderAccessEndpoint>(map['accessEndpoints'], (value) => ImageBuilderAccessEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      appstreamAgentVersion: map['appstreamAgentVersion'] == null ? null : pulumi.Output.create<String>(map['appstreamAgentVersion'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      createdTime: map['createdTime'] == null ? null : pulumi.Output.create<String>(map['createdTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      domainJoinInfo: map['domainJoinInfo'] == null ? null : pulumi.Output.create<ImageBuilderDomainJoinInfo>(ImageBuilderDomainJoinInfo.fromMap((map['domainJoinInfo'] as Map).cast<String, dynamic>())),
      enableDefaultInternetAccess: map['enableDefaultInternetAccess'] == null ? null : pulumi.Output.create<bool>(map['enableDefaultInternetAccess'] as bool),
      iamRoleArn: map['iamRoleArn'] == null ? null : pulumi.Output.create<String>(map['iamRoleArn'] as String),
      imageArn: map['imageArn'] == null ? null : pulumi.Output.create<String>(map['imageArn'] as String),
      imageName: map['imageName'] == null ? null : pulumi.Output.create<String>(map['imageName'] as String),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      vpcConfig: map['vpcConfig'] == null ? null : pulumi.Output.create<ImageBuilderVpcConfig>(ImageBuilderVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>())),
    );
  }
}

