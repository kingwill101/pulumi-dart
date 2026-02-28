// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connector_principal_info.dart';

/// {@template pulumi_beyondcorp_app_connector_app_connector_args_doc}
/// The set of arguments for AppConnector.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_app_connector_app_connector_args_doc}
class AppConnectorArgs {
  /// An arbitrary user-provided name for the AppConnector.
  final pulumi.Input<String>? displayName;

  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// ID of the AppConnector.
  final pulumi.Input<String>? name;

  /// Principal information about the Identity of the AppConnector.
  /// Structure is documented below.
  final pulumi.Input<AppConnectorPrincipalInfo> principalInfo;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The region of the AppConnector.
  final pulumi.Input<String>? region;

  /// Creates a new [AppConnectorArgs].
  /// [displayName] An arbitrary user-provided name for the AppConnector.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] ID of the AppConnector.
  /// [principalInfo] Principal information about the Identity of the AppConnector.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the AppConnector.
  AppConnectorArgs({
    String? displayName,
    Map<String, String>? labels,
    String? name,
    required AppConnectorPrincipalInfo principalInfo,
    String? project,
    String? region,
  })  : displayName = pulumi.Input.asOptionalInput<String>(displayName),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        principalInfo =
            pulumi.Input.asInput<AppConnectorPrincipalInfo>(principalInfo),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['principalInfo'] = pulumi.Input.mapInputValue<AppConnectorPrincipalInfo,
        Map<String, dynamic>>(principalInfo, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory AppConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AppConnectorArgs(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      principalInfo: AppConnectorPrincipalInfo.fromMap(
          (map['principalInfo'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
