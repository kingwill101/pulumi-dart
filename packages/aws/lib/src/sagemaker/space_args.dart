// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'space_ownership_settings.dart';
import 'space_space_settings.dart';
import 'space_space_sharing_settings.dart';

/// {@template pulumi_sagemaker_space_space_args_doc}
/// The set of arguments for Space.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_space_space_args_doc}
class SpaceArgs {
  /// The ID of the associated Domain.
  final pulumi.Input<String> domainId;

  /// A collection of ownership settings. Required if `space_sharing_settings` is set. See `ownership_settings` Block below.
  final pulumi.Input<SpaceOwnershipSettings>? ownershipSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The name of the space that appears in the SageMaker AI Studio UI.
  final pulumi.Input<String>? spaceDisplayName;

  /// The name of the space.
  final pulumi.Input<String> spaceName;

  /// A collection of space settings. See `space_settings` Block below.
  final pulumi.Input<SpaceSpaceSettings>? spaceSettings;

  /// A collection of space sharing settings. Required if `ownership_settings` is set. See `space_sharing_settings` Block below.
  final pulumi.Input<SpaceSpaceSharingSettings>? spaceSharingSettings;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SpaceArgs].
  /// [domainId] The ID of the associated Domain.
  /// [ownershipSettings] A collection of ownership settings. Required if `space_sharing_settings` is set. See `ownership_settings` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spaceDisplayName] The name of the space that appears in the SageMaker AI Studio UI.
  /// [spaceName] The name of the space.
  /// [spaceSettings] A collection of space settings. See `space_settings` Block below.
  /// [spaceSharingSettings] A collection of space sharing settings. Required if `ownership_settings` is set. See `space_sharing_settings` Block below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  SpaceArgs({
    required String domainId,
    SpaceOwnershipSettings? ownershipSettings,
    String? region,
    String? spaceDisplayName,
    required String spaceName,
    SpaceSpaceSettings? spaceSettings,
    SpaceSpaceSharingSettings? spaceSharingSettings,
    Map<String, String>? tags,
  }) : domainId = pulumi.Input.asInput<String>(domainId),
       ownershipSettings = pulumi.Input.asOptionalInput<SpaceOwnershipSettings>(
         ownershipSettings,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       spaceDisplayName = pulumi.Input.asOptionalInput<String>(
         spaceDisplayName,
       ),
       spaceName = pulumi.Input.asInput<String>(spaceName),
       spaceSettings = pulumi.Input.asOptionalInput<SpaceSpaceSettings>(
         spaceSettings,
       ),
       spaceSharingSettings =
           pulumi.Input.asOptionalInput<SpaceSpaceSharingSettings>(
             spaceSharingSettings,
           ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'ownershipSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SpaceOwnershipSettings,
            Map<String, dynamic>
          >(ownershipSettings, (value) => value.toMap()),
      'region': ?region,
      'spaceDisplayName': ?spaceDisplayName,
      'spaceName': spaceName,
      'spaceSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SpaceSpaceSettings,
            Map<String, dynamic>
          >(spaceSettings, (value) => value.toMap()),
      'spaceSharingSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SpaceSpaceSharingSettings,
            Map<String, dynamic>
          >(spaceSharingSettings, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory SpaceArgs.fromMap(Map<String, dynamic> map) {
    return SpaceArgs(
      domainId: map['domainId'] as String,
      ownershipSettings: map['ownershipSettings'] == null
          ? null
          : SpaceOwnershipSettings.fromMap(
              (map['ownershipSettings'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] == null ? null : map['region'] as String,
      spaceDisplayName: map['spaceDisplayName'] == null
          ? null
          : map['spaceDisplayName'] as String,
      spaceName: map['spaceName'] as String,
      spaceSettings: map['spaceSettings'] == null
          ? null
          : SpaceSpaceSettings.fromMap(
              (map['spaceSettings'] as Map).cast<String, dynamic>(),
            ),
      spaceSharingSettings: map['spaceSharingSettings'] == null
          ? null
          : SpaceSpaceSharingSettings.fromMap(
              (map['spaceSharingSettings'] as Map).cast<String, dynamic>(),
            ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
