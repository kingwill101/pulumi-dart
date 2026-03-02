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
  SpaceState({
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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      domainId: map['domainId'] == null ? null : (map['domainId'] as String).input(),
      homeEfsFileSystemUid: map['homeEfsFileSystemUid'] == null ? null : (map['homeEfsFileSystemUid'] as String).input(),
      ownershipSettings: map['ownershipSettings'] == null ? null : (SpaceOwnershipSettings.fromMap((map['ownershipSettings'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      spaceDisplayName: map['spaceDisplayName'] == null ? null : (map['spaceDisplayName'] as String).input(),
      spaceName: map['spaceName'] == null ? null : (map['spaceName'] as String).input(),
      spaceSettings: map['spaceSettings'] == null ? null : (SpaceSpaceSettings.fromMap((map['spaceSettings'] as Map).cast<String, dynamic>())).input(),
      spaceSharingSettings: map['spaceSharingSettings'] == null ? null : (SpaceSpaceSharingSettings.fromMap((map['spaceSharingSettings'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}

