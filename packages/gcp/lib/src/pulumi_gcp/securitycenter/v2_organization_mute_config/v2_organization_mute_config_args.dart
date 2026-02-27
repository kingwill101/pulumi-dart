// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for V2OrganizationMuteConfig.
class V2OrganizationMuteConfigArgs {
  /// A description of the mute config.
  final pulumi.Input<String>? description;

  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  final pulumi.Input<String> filter;

  /// location Id is provided by organization. If not provided, Use global as default.
  final pulumi.Input<String>? location;

  /// Unique identifier provided by the client within the parent scope.
  final pulumi.Input<String> muteConfigId;

  /// The organization whose Cloud Security Command Center the Mute
  /// Config lives in.
  final pulumi.Input<String> organization;

  /// The type of the mute config.
  final pulumi.Input<String> type;

  V2OrganizationMuteConfigArgs({
    this.description,
    required this.filter,
    this.location,
    required this.muteConfigId,
    required this.organization,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['filter'] = filter;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    map['muteConfigId'] = muteConfigId;
    map['organization'] = organization;
    map['type'] = type;
    return map;
  }

  factory V2OrganizationMuteConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2OrganizationMuteConfigArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      filter: pulumi.Input.asInput<String>(map['filter']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      muteConfigId: pulumi.Input.asInput<String>(map['muteConfigId']),
      organization: pulumi.Input.asInput<String>(map['organization']),
      type: pulumi.Input.asInput<String>(map['type']),
    );
  }
}
