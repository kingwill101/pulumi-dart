// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../space_ownership_settings/space_ownership_settings.dart';
import '../space_space_settings/space_space_settings.dart';
import '../space_space_sharing_settings/space_space_sharing_settings.dart';

/// The set of arguments for Space.
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

  SpaceArgs({
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
    final map = <String, dynamic>{};
    map['domainId'] = domainId;
    final ownershipSettingsValue = ownershipSettings;
    if (ownershipSettingsValue != null) {
      map['ownershipSettings'] = pulumi.Input.mapOptionalInputValue<
              SpaceOwnershipSettings, Map<String, dynamic>>(
          ownershipSettingsValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final spaceDisplayNameValue = spaceDisplayName;
    if (spaceDisplayNameValue != null) {
      map['spaceDisplayName'] = spaceDisplayNameValue;
    }
    map['spaceName'] = spaceName;
    final spaceSettingsValue = spaceSettings;
    if (spaceSettingsValue != null) {
      map['spaceSettings'] = pulumi.Input.mapOptionalInputValue<
          SpaceSpaceSettings,
          Map<String, dynamic>>(spaceSettingsValue, (value) => value.toMap());
    }
    final spaceSharingSettingsValue = spaceSharingSettings;
    if (spaceSharingSettingsValue != null) {
      map['spaceSharingSettings'] = pulumi.Input.mapOptionalInputValue<
              SpaceSpaceSharingSettings, Map<String, dynamic>>(
          spaceSharingSettingsValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory SpaceArgs.fromMap(Map<String, dynamic> map) {
    return SpaceArgs(
      domainId: pulumi.Input.asInput<String>(map['domainId']),
      ownershipSettings: pulumi.Input.asOptionalInput<SpaceOwnershipSettings>(
          map['ownershipSettings']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      spaceDisplayName:
          pulumi.Input.asOptionalInput<String>(map['spaceDisplayName']),
      spaceName: pulumi.Input.asInput<String>(map['spaceName']),
      spaceSettings: pulumi.Input.asOptionalInput<SpaceSpaceSettings>(
          map['spaceSettings']),
      spaceSharingSettings:
          pulumi.Input.asOptionalInput<SpaceSpaceSharingSettings>(
              map['spaceSharingSettings']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
