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
  /// A collection of ownership settings. Required if `spaceSharingSettings` is set. See `ownershipSettings` Block below.
  final pulumi.Input<SpaceOwnershipSettings>? ownershipSettings;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the space that appears in the SageMaker AI Studio UI.
  final pulumi.Input<String>? spaceDisplayName;
  /// The name of the space.
  final pulumi.Input<String> spaceName;
  /// A collection of space settings. See `spaceSettings` Block below.
  final pulumi.Input<SpaceSpaceSettings>? spaceSettings;
  /// A collection of space sharing settings. Required if `ownershipSettings` is set. See `spaceSharingSettings` Block below.
  final pulumi.Input<SpaceSpaceSharingSettings>? spaceSharingSettings;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SpaceArgs].
  /// [domainId] The ID of the associated Domain.
  /// [ownershipSettings] A collection of ownership settings. Required if `spaceSharingSettings` is set. See `ownershipSettings` Block below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spaceDisplayName] The name of the space that appears in the SageMaker AI Studio UI.
  /// [spaceName] The name of the space.
  /// [spaceSettings] A collection of space settings. See `spaceSettings` Block below.
  /// [spaceSharingSettings] A collection of space sharing settings. Required if `ownershipSettings` is set. See `spaceSharingSettings` Block below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const SpaceArgs({
    required this.domainId,
    this.ownershipSettings,
    this.region,
    this.spaceDisplayName,
    required this.spaceName,
    this.spaceSettings,
    this.spaceSharingSettings,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'ownershipSettings': ?pulumi.Input.mapOptionalInputValue<SpaceOwnershipSettings, Map<String, dynamic>>(ownershipSettings, (value) => value.toMap()),
      'region': ?region,
      'spaceDisplayName': ?spaceDisplayName,
      'spaceName': spaceName,
      'spaceSettings': ?pulumi.Input.mapOptionalInputValue<SpaceSpaceSettings, Map<String, dynamic>>(spaceSettings, (value) => value.toMap()),
      'spaceSharingSettings': ?pulumi.Input.mapOptionalInputValue<SpaceSpaceSharingSettings, Map<String, dynamic>>(spaceSharingSettings, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory SpaceArgs.fromMap(Map<String, dynamic> map) {
    return SpaceArgs(
      domainId: pulumi.Input.fromValue(map['domainId'] as String),
      ownershipSettings: (() { final guardedValue = map['ownershipSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceOwnershipSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceDisplayName: (() { final guardedValue = map['spaceDisplayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spaceName: pulumi.Input.fromValue(map['spaceName'] as String),
      spaceSettings: (() { final guardedValue = map['spaceSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceSpaceSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spaceSharingSettings: (() { final guardedValue = map['spaceSharingSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SpaceSpaceSharingSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
