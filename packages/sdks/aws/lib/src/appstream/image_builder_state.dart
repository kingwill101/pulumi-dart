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
    this.accessEndpoints,
    this.appstreamAgentVersion,
    this.arn,
    this.createdTime,
    this.description,
    this.displayName,
    this.domainJoinInfo,
    this.enableDefaultInternetAccess,
    this.iamRoleArn,
    this.imageArn,
    this.imageName,
    this.instanceType,
    this.name,
    this.region,
    this.state,
    this.tags,
    this.tagsAll,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<ImageBuilderAccessEndpoint>,
            List<Map<String, dynamic>>
          >(
            accessEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  ImageBuilderAccessEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'appstreamAgentVersion': ?appstreamAgentVersion,
      'arn': ?arn,
      'createdTime': ?createdTime,
      'description': ?description,
      'displayName': ?displayName,
      'domainJoinInfo':
          ?pulumi.Input.mapOptionalInputValue<
            ImageBuilderDomainJoinInfo,
            Map<String, dynamic>
          >(domainJoinInfo, (value) => value.toMap()),
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
      'vpcConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ImageBuilderVpcConfig,
            Map<String, dynamic>
          >(vpcConfig, (value) => value.toMap()),
    };
  }

  factory ImageBuilderState.fromMap(Map<String, dynamic> map) {
    return ImageBuilderState(
      accessEndpoints: (() {
        final guardedValue = map['accessEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ImageBuilderAccessEndpoint>(
            guardedValue,
            (value) => ImageBuilderAccessEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      appstreamAgentVersion: (() {
        final guardedValue = map['appstreamAgentVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createdTime: (() {
        final guardedValue = map['createdTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domainJoinInfo: (() {
        final guardedValue = map['domainJoinInfo'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ImageBuilderDomainJoinInfo.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enableDefaultInternetAccess: (() {
        final guardedValue = map['enableDefaultInternetAccess'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      iamRoleArn: (() {
        final guardedValue = map['iamRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageArn: (() {
        final guardedValue = map['imageArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      imageName: (() {
        final guardedValue = map['imageName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceType: (() {
        final guardedValue = map['instanceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcConfig: (() {
        final guardedValue = map['vpcConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ImageBuilderVpcConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
