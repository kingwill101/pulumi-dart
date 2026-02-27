// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for AppGateway.
class AppGatewayArgs {
  /// An arbitrary user-provided name for the AppGateway.
  final pulumi.Input<String>? displayName;

  /// The type of hosting used by the AppGateway.
  /// Default value is `HOST_TYPE_UNSPECIFIED`.
  /// Possible values are: `HOST_TYPE_UNSPECIFIED`, `GCP_REGIONAL_MIG`.
  final pulumi.Input<String>? hostType;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// ID of the AppGateway.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the AppGateway.
  final pulumi.Input<String>? region;

  /// The type of network connectivity used by the AppGateway.
  /// Default value is `TYPE_UNSPECIFIED`.
  /// Possible values are: `TYPE_UNSPECIFIED`, `TCP_PROXY`.
  final pulumi.Input<String>? type;

  AppGatewayArgs({
    this.displayName,
    this.hostType,
    this.labels,
    this.name,
    this.project,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final hostTypeValue = hostType;
    if (hostTypeValue != null) {
      map['hostType'] = hostTypeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory AppGatewayArgs.fromMap(Map<String, dynamic> map) {
    return AppGatewayArgs(
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      hostType: pulumi.Input.asOptionalInput<String>(map['hostType']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
