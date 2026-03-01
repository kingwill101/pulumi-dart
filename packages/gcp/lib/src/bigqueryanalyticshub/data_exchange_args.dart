// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_exchange_sharing_environment_config.dart';

/// {@template pulumi_bigqueryanalyticshub_data_exchange_data_exchange_args_doc}
/// The set of arguments for DataExchange.
/// {@endtemplate}
/// {@macro pulumi_bigqueryanalyticshub_data_exchange_data_exchange_args_doc}
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

  /// Creates a new [DataExchangeArgs].
  /// [dataExchangeId] The ID of the data exchange. Must contain only Unicode letters, numbers (0-9), underscores (_). Should not use characters that require URL-escaping, or characters outside of ASCII, spaces.
  /// [description] Description of the data exchange.
  /// [discoveryType] Type of discovery on the discovery page for all the listings under this exchange. Cannot be set for a Data Clean Room. Updating this field also updates (overwrites) the discoveryType field for all the listings under this exchange.
  /// [displayName] Human-readable display name of the data exchange. The display name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and must not start or end with spaces.
  /// [documentation] Documentation describing the data exchange.
  /// [icon] Base64 encoded image representing the data exchange.
  /// [location] The name of the location this data exchange.
  /// [logLinkedDatasetQueryUserEmail] If true, subscriber email logging is enabled and all queries on the linked dataset will log the email address of the querying user. Once enabled, this setting cannot be turned off.
  /// [primaryContact] Email or URL of the primary point of contact of the data exchange.
  /// [project] The ID of the project in which the resource belongs.
  /// [sharingEnvironmentConfig] Configurable data sharing environment option for a data exchange.
  DataExchangeArgs({
    required String dataExchangeId,
    String? description,
    String? discoveryType,
    required String displayName,
    String? documentation,
    String? icon,
    required String location,
    bool? logLinkedDatasetQueryUserEmail,
    String? primaryContact,
    String? project,
    DataExchangeSharingEnvironmentConfig? sharingEnvironmentConfig,
  }) : dataExchangeId = pulumi.Input.asInput<String>(dataExchangeId),
       description = pulumi.Input.asOptionalInput<String>(description),
       discoveryType = pulumi.Input.asOptionalInput<String>(discoveryType),
       displayName = pulumi.Input.asInput<String>(displayName),
       documentation = pulumi.Input.asOptionalInput<String>(documentation),
       icon = pulumi.Input.asOptionalInput<String>(icon),
       location = pulumi.Input.asInput<String>(location),
       logLinkedDatasetQueryUserEmail = pulumi.Input.asOptionalInput<bool>(
         logLinkedDatasetQueryUserEmail,
       ),
       primaryContact = pulumi.Input.asOptionalInput<String>(primaryContact),
       project = pulumi.Input.asOptionalInput<String>(project),
       sharingEnvironmentConfig =
           pulumi.Input.asOptionalInput<DataExchangeSharingEnvironmentConfig>(
             sharingEnvironmentConfig,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataExchangeId': dataExchangeId,
      'description': ?description,
      'discoveryType': ?discoveryType,
      'displayName': displayName,
      'documentation': ?documentation,
      'icon': ?icon,
      'location': location,
      'logLinkedDatasetQueryUserEmail': ?logLinkedDatasetQueryUserEmail,
      'primaryContact': ?primaryContact,
      'project': ?project,
      'sharingEnvironmentConfig':
          ?pulumi.Input.mapOptionalInputValue<
            DataExchangeSharingEnvironmentConfig,
            Map<String, dynamic>
          >(sharingEnvironmentConfig, (value) => value.toMap()),
    };
  }

  factory DataExchangeArgs.fromMap(Map<String, dynamic> map) {
    return DataExchangeArgs(
      dataExchangeId: map['dataExchangeId'] as String,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      discoveryType: map['discoveryType'] == null
          ? null
          : map['discoveryType'] as String,
      displayName: map['displayName'] as String,
      documentation: map['documentation'] == null
          ? null
          : map['documentation'] as String,
      icon: map['icon'] == null ? null : map['icon'] as String,
      location: map['location'] as String,
      logLinkedDatasetQueryUserEmail:
          map['logLinkedDatasetQueryUserEmail'] == null
          ? null
          : map['logLinkedDatasetQueryUserEmail'] as bool,
      primaryContact: map['primaryContact'] == null
          ? null
          : map['primaryContact'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      sharingEnvironmentConfig: map['sharingEnvironmentConfig'] == null
          ? null
          : DataExchangeSharingEnvironmentConfig.fromMap(
              (map['sharingEnvironmentConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
