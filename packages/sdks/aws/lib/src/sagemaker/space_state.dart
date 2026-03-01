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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? homeEfsFileSystemUid,
    pulumi.Output<SpaceOwnershipSettings>? ownershipSettings,
    pulumi.Output<String>? region,
    pulumi.Output<String>? spaceDisplayName,
    pulumi.Output<String>? spaceName,
    pulumi.Output<SpaceSpaceSettings>? spaceSettings,
    pulumi.Output<SpaceSpaceSharingSettings>? spaceSharingSettings,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? url,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      homeEfsFileSystemUid = pulumi.Input.asOptionalInput<String>(homeEfsFileSystemUid),
      ownershipSettings = pulumi.Input.asOptionalInput<SpaceOwnershipSettings>(ownershipSettings),
      region = pulumi.Input.asOptionalInput<String>(region),
      spaceDisplayName = pulumi.Input.asOptionalInput<String>(spaceDisplayName),
      spaceName = pulumi.Input.asOptionalInput<String>(spaceName),
      spaceSettings = pulumi.Input.asOptionalInput<SpaceSpaceSettings>(spaceSettings),
      spaceSharingSettings = pulumi.Input.asOptionalInput<SpaceSpaceSharingSettings>(spaceSharingSettings),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      url = pulumi.Input.asOptionalInput<String>(url);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      homeEfsFileSystemUid: map['homeEfsFileSystemUid'] == null ? null : pulumi.Output.create<String>(map['homeEfsFileSystemUid'] as String),
      ownershipSettings: map['ownershipSettings'] == null ? null : pulumi.Output.create<SpaceOwnershipSettings>(SpaceOwnershipSettings.fromMap((map['ownershipSettings'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      spaceDisplayName: map['spaceDisplayName'] == null ? null : pulumi.Output.create<String>(map['spaceDisplayName'] as String),
      spaceName: map['spaceName'] == null ? null : pulumi.Output.create<String>(map['spaceName'] as String),
      spaceSettings: map['spaceSettings'] == null ? null : pulumi.Output.create<SpaceSpaceSettings>(SpaceSpaceSettings.fromMap((map['spaceSettings'] as Map).cast<String, dynamic>())),
      spaceSharingSettings: map['spaceSharingSettings'] == null ? null : pulumi.Output.create<SpaceSpaceSharingSettings>(SpaceSpaceSharingSettings.fromMap((map['spaceSharingSettings'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

