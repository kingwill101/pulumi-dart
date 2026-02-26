// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../space_ownership_settings/space_ownership_settings.dart';
import '../space_space_settings/space_space_settings.dart';
import '../space_space_sharing_settings/space_space_sharing_settings.dart';

/// The set of arguments for Space.
class SpaceArgs {
  /// The ID of the associated Domain.
  final Input<String> domainId;

  /// A collection of ownership settings. Required if <span pulumi-lang-nodejs="`spaceSharingSettings`" pulumi-lang-dotnet="`SpaceSharingSettings`" pulumi-lang-go="`spaceSharingSettings`" pulumi-lang-python="`space_sharing_settings`" pulumi-lang-yaml="`spaceSharingSettings`" pulumi-lang-java="`spaceSharingSettings`">`space_sharing_settings`</span> is set. See <span pulumi-lang-nodejs="`ownershipSettings`" pulumi-lang-dotnet="`OwnershipSettings`" pulumi-lang-go="`ownershipSettings`" pulumi-lang-python="`ownership_settings`" pulumi-lang-yaml="`ownershipSettings`" pulumi-lang-java="`ownershipSettings`">`ownership_settings`</span> Block below.
  final Input<SpaceOwnershipSettings>? ownershipSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The name of the space that appears in the SageMaker AI Studio UI.
  final Input<String>? spaceDisplayName;

  /// The name of the space.
  final Input<String> spaceName;

  /// A collection of space settings. See <span pulumi-lang-nodejs="`spaceSettings`" pulumi-lang-dotnet="`SpaceSettings`" pulumi-lang-go="`spaceSettings`" pulumi-lang-python="`space_settings`" pulumi-lang-yaml="`spaceSettings`" pulumi-lang-java="`spaceSettings`">`space_settings`</span> Block below.
  final Input<SpaceSpaceSettings>? spaceSettings;

  /// A collection of space sharing settings. Required if <span pulumi-lang-nodejs="`ownershipSettings`" pulumi-lang-dotnet="`OwnershipSettings`" pulumi-lang-go="`ownershipSettings`" pulumi-lang-python="`ownership_settings`" pulumi-lang-yaml="`ownershipSettings`" pulumi-lang-java="`ownershipSettings`">`ownership_settings`</span> is set. See <span pulumi-lang-nodejs="`spaceSharingSettings`" pulumi-lang-dotnet="`SpaceSharingSettings`" pulumi-lang-go="`spaceSharingSettings`" pulumi-lang-python="`space_sharing_settings`" pulumi-lang-yaml="`spaceSharingSettings`" pulumi-lang-java="`spaceSharingSettings`">`space_sharing_settings`</span> Block below.
  final Input<SpaceSpaceSharingSettings>? spaceSharingSettings;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      map['ownershipSettings'] = Input.mapOptionalInputValue<
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
      map['spaceSettings'] =
          Input.mapOptionalInputValue<SpaceSpaceSettings, Map<String, dynamic>>(
              spaceSettingsValue, (value) => value.toMap());
    }
    final spaceSharingSettingsValue = spaceSharingSettings;
    if (spaceSharingSettingsValue != null) {
      map['spaceSharingSettings'] = Input.mapOptionalInputValue<
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
      domainId: Input.asInput<String>(map['domainId']),
      ownershipSettings: Input.asOptionalInput<SpaceOwnershipSettings>(
          map['ownershipSettings']),
      region: Input.asOptionalInput<String>(map['region']),
      spaceDisplayName: Input.asOptionalInput<String>(map['spaceDisplayName']),
      spaceName: Input.asInput<String>(map['spaceName']),
      spaceSettings:
          Input.asOptionalInput<SpaceSpaceSettings>(map['spaceSettings']),
      spaceSharingSettings: Input.asOptionalInput<SpaceSpaceSharingSettings>(
          map['spaceSharingSettings']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
