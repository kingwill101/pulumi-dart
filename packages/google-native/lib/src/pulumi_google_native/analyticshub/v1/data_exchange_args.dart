// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sharing_environment_config.dart';

/// The set of arguments for DataExchange.
class DataExchangeArgs {
  /// Required. The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces. Max length: 100 bytes.
  final pulumi.Input<String> dataExchangeId;

  /// Optional. Description of the data exchange. The description must not contain Unicode non-characters as well as C0 and C1 control codes except tabs (HT), new lines (LF), carriage returns (CR), and page breaks (FF). Default value is an empty string. Max length: 2000 bytes.
  final pulumi.Input<String>? description;

  /// Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), ampersands (&) and must not start or end with spaces. Default value is an empty string. Max length: 63 bytes.
  final pulumi.Input<String> displayName;

  /// Optional. Documentation describing the data exchange.
  final pulumi.Input<String>? documentation;

  /// Optional. Base64 encoded image representing the data exchange. Max Size: 3.0MiB Expected image dimensions are 512x512 pixels, however the API only performs validation on size of the encoded data. Note: For byte fields, the content of the fields are base64-encoded (which increases the size of the data by 33-36%) when using JSON on the wire.
  final pulumi.Input<String>? icon;
  final pulumi.Input<String>? location;

  /// Optional. Email or URL of the primary point of contact of the data exchange. Max Length: 1000 bytes.
  final pulumi.Input<String>? primaryContact;
  final pulumi.Input<String>? project;

  /// Optional. Configurable data sharing environment option for a data exchange.
  final pulumi.Input<SharingEnvironmentConfig>? sharingEnvironmentConfig;

  DataExchangeArgs({
    required this.dataExchangeId,
    this.description,
    required this.displayName,
    this.documentation,
    this.icon,
    this.location,
    this.primaryContact,
    this.project,
    this.sharingEnvironmentConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataExchangeId'] = dataExchangeId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    final documentationValue = documentation;
    if (documentationValue != null) {
      map['documentation'] = documentationValue;
    }
    final iconValue = icon;
    if (iconValue != null) {
      map['icon'] = iconValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final primaryContactValue = primaryContact;
    if (primaryContactValue != null) {
      map['primaryContact'] = primaryContactValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sharingEnvironmentConfigValue = sharingEnvironmentConfig;
    if (sharingEnvironmentConfigValue != null) {
      map['sharingEnvironmentConfig'] = pulumi.Input.mapOptionalInputValue<
              SharingEnvironmentConfig, Map<String, dynamic>>(
          sharingEnvironmentConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory DataExchangeArgs.fromMap(Map<String, dynamic> map) {
    return DataExchangeArgs(
      dataExchangeId: pulumi.Input.asInput<String>(map['dataExchangeId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      documentation: pulumi.Input.asOptionalInput<String>(map['documentation']),
      icon: pulumi.Input.asOptionalInput<String>(map['icon']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      primaryContact:
          pulumi.Input.asOptionalInput<String>(map['primaryContact']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sharingEnvironmentConfig:
          pulumi.Input.asOptionalInput<SharingEnvironmentConfig>(
              map['sharingEnvironmentConfig']),
    );
  }
}
