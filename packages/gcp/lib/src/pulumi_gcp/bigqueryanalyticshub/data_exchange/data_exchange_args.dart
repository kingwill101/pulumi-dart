// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_exchange_sharing_environment_config/data_exchange_sharing_environment_config.dart';

/// The set of arguments for DataExchange.
class DataExchangeArgs {
  /// The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  final pulumi.Input<String> dataExchangeId;

  /// Description of the data exchange.
  final pulumi.Input<String>? description;

  /// Type of discovery on the discovery page for all the listings under this exchange. Cannot be set for a Data Clean Room. Updating this field also updates (overwrites) the discoveryType field for all the listings under this exchange.
  /// Possible values are: `DISCOVERY_TYPE_PRIVATE`, `DISCOVERY_TYPE_PUBLIC`.
  final pulumi.Input<String>? discoveryType;

  /// Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and must not start or end with spaces.
  final pulumi.Input<String> displayName;

  /// Documentation describing the data exchange.
  final pulumi.Input<String>? documentation;

  /// Base64 encoded image representing the data exchange.
  final pulumi.Input<String>? icon;

  /// The name of the location this data exchange.
  final pulumi.Input<String> location;

  /// If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  final pulumi.Input<bool>? logLinkedDatasetQueryUserEmail;

  /// Email or URL of the primary point of contact of the data exchange.
  final pulumi.Input<String>? primaryContact;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Configurable data sharing environment option for a data exchange.
  /// This field is required for data clean room exchanges.
  /// Structure is documented below.
  final pulumi.Input<DataExchangeSharingEnvironmentConfig>?
      sharingEnvironmentConfig;

  DataExchangeArgs({
    required this.dataExchangeId,
    this.description,
    this.discoveryType,
    required this.displayName,
    this.documentation,
    this.icon,
    required this.location,
    this.logLinkedDatasetQueryUserEmail,
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
    final discoveryTypeValue = discoveryType;
    if (discoveryTypeValue != null) {
      map['discoveryType'] = discoveryTypeValue;
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
    map['location'] = location;
    final logLinkedDatasetQueryUserEmailValue = logLinkedDatasetQueryUserEmail;
    if (logLinkedDatasetQueryUserEmailValue != null) {
      map['logLinkedDatasetQueryUserEmail'] =
          logLinkedDatasetQueryUserEmailValue;
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
              DataExchangeSharingEnvironmentConfig, Map<String, dynamic>>(
          sharingEnvironmentConfigValue, (value) => value.toMap());
    }
    return map;
  }

  factory DataExchangeArgs.fromMap(Map<String, dynamic> map) {
    return DataExchangeArgs(
      dataExchangeId: pulumi.Input.asInput<String>(map['dataExchangeId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      discoveryType: pulumi.Input.asOptionalInput<String>(map['discoveryType']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      documentation: pulumi.Input.asOptionalInput<String>(map['documentation']),
      icon: pulumi.Input.asOptionalInput<String>(map['icon']),
      location: pulumi.Input.asInput<String>(map['location']),
      logLinkedDatasetQueryUserEmail: pulumi.Input.asOptionalInput<bool>(
          map['logLinkedDatasetQueryUserEmail']),
      primaryContact:
          pulumi.Input.asOptionalInput<String>(map['primaryContact']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      sharingEnvironmentConfig:
          pulumi.Input.asOptionalInput<DataExchangeSharingEnvironmentConfig>(
              map['sharingEnvironmentConfig']),
    );
  }
}
