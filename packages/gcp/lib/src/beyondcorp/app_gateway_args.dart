// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_beyondcorp_app_gateway_app_gateway_args_doc}
/// The set of arguments for AppGateway.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_app_gateway_app_gateway_args_doc}
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

  /// Creates a new [AppGatewayArgs].
  /// [displayName] An arbitrary user-provided name for the AppGateway.
  /// [hostType] The type of hosting used by the AppGateway.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] ID of the AppGateway.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the AppGateway.
  /// [type] The type of network connectivity used by the AppGateway.
  AppGatewayArgs({
    String? displayName,
    String? hostType,
    Map<String, String>? labels,
    String? name,
    String? project,
    String? region,
    String? type,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        hostType = pulumi.Input.asOptionalInput<String>(hostType),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region),
        type = pulumi.Input.asOptionalInput<String>(type);

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
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      hostType: map['hostType'] == null ? null : map['hostType'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
