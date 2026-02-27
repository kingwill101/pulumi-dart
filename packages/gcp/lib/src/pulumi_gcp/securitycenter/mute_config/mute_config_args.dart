// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for MuteConfig.
class MuteConfigArgs {
  /// A description of the mute config.
  final pulumi.Input<String>? description;

  /// Optional. The expiry of the mute config. Only applicable for dynamic configs.
  /// If the expiry is set, when the config expires, it is removed from all findings.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to
  /// nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? expiryTime;

  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  final pulumi.Input<String> filter;

  /// Unique identifier provided by the client within the parent scope.
  final pulumi.Input<String> muteConfigId;

  /// Resource name of the new mute configs's parent. Its format is
  /// "organizations/[organization_id]", "folders/[folder_id]", or
  /// "projects/[project_id]".
  final pulumi.Input<String> parent;

  /// The type of the mute config, which determines what type of mute state the config affects.
  /// Default value is `DYNAMIC`.
  /// Possible values are: `MUTE_CONFIG_TYPE_UNSPECIFIED`, `STATIC`, `DYNAMIC`.
  final pulumi.Input<String>? type;

  MuteConfigArgs({
    this.description,
    this.expiryTime,
    required this.filter,
    required this.muteConfigId,
    required this.parent,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final expiryTimeValue = expiryTime;
    if (expiryTimeValue != null) {
      map['expiryTime'] = expiryTimeValue;
    }
    map['filter'] = filter;
    map['muteConfigId'] = muteConfigId;
    map['parent'] = parent;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory MuteConfigArgs.fromMap(Map<String, dynamic> map) {
    return MuteConfigArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      expiryTime: pulumi.Input.asOptionalInput<String>(map['expiryTime']),
      filter: pulumi.Input.asInput<String>(map['filter']),
      muteConfigId: pulumi.Input.asInput<String>(map['muteConfigId']),
      parent: pulumi.Input.asInput<String>(map['parent']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
