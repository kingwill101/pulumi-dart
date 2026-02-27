// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_connector_principal_info/app_connector_principal_info.dart';

/// The set of arguments for AppConnector.
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

  AppConnectorArgs({
    this.displayName,
    this.labels,
    this.name,
    required this.principalInfo,
    this.project,
    this.region,
  });

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
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      principalInfo:
          pulumi.Input.asInput<AppConnectorPrincipalInfo>(map['principalInfo']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
