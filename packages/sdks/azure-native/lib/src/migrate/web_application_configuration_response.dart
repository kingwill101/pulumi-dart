// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_store_details_response.dart';

/// Class for web application configurations.
class WebApplicationConfigurationResponse {
  /// Gets or sets the configuration file path.
  final pulumi.Input<String>? filePath;
  /// Gets the ID.
  final pulumi.Input<String> id;
  /// Gets or sets the identifier for the configuration.
  final pulumi.Input<String>? identifier;
  /// Gets or sets a value indicating whether the configuration is edited or not by the user.
  final pulumi.Input<bool>? isDeploymentTimeEditable;
  /// Gets or sets the configuration local file path.
  final pulumi.Input<String>? localFilePath;
  /// Gets or sets the configuration name.
  final pulumi.Input<String>? name;
  final pulumi.Input<SecretStoreDetailsResponse>? secretStoreDetails;
  /// Gets or sets the configuration section in the file.
  final pulumi.Input<String>? section;
  /// Gets or sets the configuration target file path.
  final pulumi.Input<String>? targetFilePath;
  /// Gets or sets the configuration type.
  final pulumi.Input<String>? type;
  /// Gets or sets the configuration value.
  final pulumi.Input<String>? value;

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
      'secretStoreDetails': ?pulumi.Input.mapOptionalInputValue<SecretStoreDetailsResponse, Map<String, dynamic>>(secretStoreDetails, (value) => value.toMap()),
      'section': ?section,
      'targetFilePath': ?targetFilePath,
      'type': ?type,
      'value': ?value,
    };
  }

  factory WebApplicationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return WebApplicationConfigurationResponse(
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDeploymentTimeEditable: (() { final guardedValue = map['isDeploymentTimeEditable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      localFilePath: (() { final guardedValue = map['localFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretStoreDetails: (() { final guardedValue = map['secretStoreDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretStoreDetailsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      section: (() { final guardedValue = map['section']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetFilePath: (() { final guardedValue = map['targetFilePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

