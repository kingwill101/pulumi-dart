// ignore_for_file: unused_element, unnecessary_cast

import 'secret_store_details_response.dart';

/// Class for web application configurations.
class WebApplicationConfigurationResponse {
  /// Gets or sets the configuration file path.
  final String? filePath;
  /// Gets the ID.
  final String id;
  /// Gets or sets the identifier for the configuration.
  final String? identifier;
  /// Gets or sets a value indicating whether the configuration is edited or not by the user.
  final bool? isDeploymentTimeEditable;
  /// Gets or sets the configuration local file path.
  final String? localFilePath;
  /// Gets or sets the configuration name.
  final String? name;
  final SecretStoreDetailsResponse? secretStoreDetails;
  /// Gets or sets the configuration section in the file.
  final String? section;
  /// Gets or sets the configuration target file path.
  final String? targetFilePath;
  /// Gets or sets the configuration type.
  final String? type;
  /// Gets or sets the configuration value.
  final String? value;

  /// Creates a new [WebApplicationConfigurationResponse].
  /// [filePath] Gets or sets the configuration file path.
  /// [id] Gets the ID.
  /// [identifier] Gets or sets the identifier for the configuration.
  /// [isDeploymentTimeEditable] Gets or sets a value indicating whether the configuration is edited or not by the user.
  /// [localFilePath] Gets or sets the configuration local file path.
  /// [name] Gets or sets the configuration name.
  /// [secretStoreDetails] Optional.
  /// [section] Gets or sets the configuration section in the file.
  /// [targetFilePath] Gets or sets the configuration target file path.
  /// [type] Gets or sets the configuration type.
  /// [value] Gets or sets the configuration value.
  WebApplicationConfigurationResponse({
    this.filePath,
    required this.id,
    this.identifier,
    this.isDeploymentTimeEditable,
    this.localFilePath,
    this.name,
    this.secretStoreDetails,
    this.section,
    this.targetFilePath,
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': ?filePath,
      'id': id,
      'identifier': ?identifier,
      'isDeploymentTimeEditable': ?isDeploymentTimeEditable,
      'localFilePath': ?localFilePath,
      'name': ?name,
      'secretStoreDetails': ?secretStoreDetails == null ? null : secretStoreDetails!.toMap(),
      'section': ?section,
      'targetFilePath': ?targetFilePath,
      'type': ?type,
      'value': ?value,
    };
  }

  factory WebApplicationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WebApplicationConfigurationResponse(
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
      id: map['id'] as String,
      identifier: map['identifier'] == null ? null : map['identifier'] as String,
      isDeploymentTimeEditable: map['isDeploymentTimeEditable'] == null ? null : map['isDeploymentTimeEditable'] as bool,
      localFilePath: map['localFilePath'] == null ? null : map['localFilePath'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      secretStoreDetails: map['secretStoreDetails'] == null ? null : SecretStoreDetailsResponse.fromMap((map['secretStoreDetails'] as Map).cast<String, dynamic>()),
      section: map['section'] == null ? null : map['section'] as String,
      targetFilePath: map['targetFilePath'] == null ? null : map['targetFilePath'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

