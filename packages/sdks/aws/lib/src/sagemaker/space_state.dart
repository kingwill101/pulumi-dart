// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_ownership_settings.dart';
import 'space_space_settings.dart';
import 'space_space_sharing_settings.dart';

/// Input properties used for looking up and filtering Space resources.
class SpaceState {
  /// The space's Amazon Resource Name (ARN).
  final pulumi.Input<String>? arn;
  /// The ID of the associated Domain.
  final pulumi.Input<String>? domainId;
  /// The ID of the space's profile in the Amazon Elastic File System volume.
  final pulumi.Input<String>? homeEfsFileSystemUid;
  /// A collection of ownership settings. Required if `space_sharing_settings` is set. See `ownership_settings` Block below.
  final pulumi.Input<SpaceOwnershipSettings>? ownershipSettings;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the space that appears in the SageMaker AI Studio UI.
  final pulumi.Input<String>? spaceDisplayName;
  /// The name of the space.
  final pulumi.Input<String>? spaceName;
  /// A collection of space settings. See `space_settings` Block below.
  final pulumi.Input<SpaceSpaceSettings>? spaceSettings;
  /// A collection of space sharing settings. Required if `ownership_settings` is set. See `space_sharing_settings` Block below.
  final pulumi.Input<SpaceSpaceSharingSettings>? spaceSharingSettings;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Returns the URL of the space. If the space is created with Amazon Web Services IAM Identity Center (Successor to Amazon Web Services Single Sign-On) authentication, users can navigate to the URL after appending the respective redirect parameter for the application type to be federated through Amazon Web Services IAM Identity Center.
  final pulumi.Input<String>? url;

  /// Creates a new [SpaceState].
  /// [arn] The space's Amazon Resource Name (ARN).
  /// [domainId] The ID of the associated Domain.
  /// [homeEfsFileSystemUid] The ID of the space's profile in the Amazon Elastic File System volume.
  /// [ownershipSettings] A collection of ownership settings. Required if `space_sharing_settings` is set. See `ownership_settings` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spaceDisplayName] The name of the space that appears in the SageMaker AI Studio UI.
  /// [spaceName] The name of the space.
  /// [spaceSettings] A collection of space settings. See `space_settings` Block below.
  /// [spaceSharingSettings] A collection of space sharing settings. Required if `ownership_settings` is set. See `space_sharing_settings` Block below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [url] Returns the URL of the space. If the space is created with Amazon Web Services IAM Identity Center (Successor to Amazon Web Services Single Sign-On) authentication, users can navigate to the URL after appending the respective redirect parameter for the application type to be federated through Amazon Web Services IAM Identity Center.
  const SpaceState({
    this.arn,
    this.domainId,
    this.homeEfsFileSystemUid,
    this.ownershipSettings,
    this.region,
    this.spaceDisplayName,
    this.spaceName,
    this.spaceSettings,
    this.spaceSharingSettings,
    this.tags,
    this.tagsAll,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'domainId': ?domainId,
      'homeEfsFileSystemUid': ?homeEfsFileSystemUid,
      'ownershipSettings': ?pulumi.Input.mapOptionalInputValue<SpaceOwnershipSettings, Map<String, dynamic>>(ownershipSettings, (value) => value.toMap()),
      'region': ?region,
      'spaceDisplayName': ?spaceDisplayName,
      'spaceName': ?spaceName,
      'spaceSettings': ?pulumi.Input.mapOptionalInputValue<SpaceSpaceSettings, Map<String, dynamic>>(spaceSettings, (value) => value.toMap()),
      'spaceSharingSettings': ?pulumi.Input.mapOptionalInputValue<SpaceSpaceSharingSettings, Map<String, dynamic>>(spaceSharingSettings, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'url': ?url,
    };
  }

  factory SpaceState.fromMap(Map<String, dynamic> map) {
    return SpaceState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainId: (() { final guardedValue = map['domainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      homeEfsFileSystemUid: (() { final guardedValue = map['homeEfsFileSystemUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownershipSettings: (() { final guardedValue = map['ownershipSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceOwnershipSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceDisplayName: (() { final guardedValue = map['spaceDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceName: (() { final guardedValue = map['spaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceSettings: (() { final guardedValue = map['spaceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceSpaceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spaceSharingSettings: (() { final guardedValue = map['spaceSharingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceSpaceSharingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

