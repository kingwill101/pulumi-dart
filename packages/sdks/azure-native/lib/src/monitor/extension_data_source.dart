// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of which data will be collected from a separate VM extension that integrates with the Azure Monitor Agent.
/// Collected from either Windows and Linux machines, depending on which extension is defined.
class ExtensionDataSource {
  /// The name of the VM extension.
  final pulumi.Input<String> extensionName;
  /// The extension settings. The format is specific for particular extension.
  final pulumi.Input<dynamic>? extensionSettings;
  /// The list of data sources this extension needs data from.
  final pulumi.Input<List<String>>? inputDataSources;
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final pulumi.Input<String>? name;
  /// List of streams that this data source will be sent to.
  /// A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final pulumi.Input<List<String>>? streams;

  /// Creates a new [ExtensionDataSource].
  /// [extensionName] The name of the VM extension.
  /// [extensionSettings] The extension settings. The format is specific for particular extension.
  /// [inputDataSources] The list of data sources this extension needs data from.
  /// [name] A friendly name for the data source.
  /// [streams] List of streams that this data source will be sent to.
  ExtensionDataSource({
    required this.extensionName,
    this.extensionSettings,
    this.inputDataSources,
    this.name,
    this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extensionName': extensionName,
      'extensionSettings': ?extensionSettings,
      'inputDataSources': ?inputDataSources,
      'name': ?name,
      'streams': ?streams,
    };
  }

  factory ExtensionDataSource.fromMap(Map<String, dynamic> map) {
    return ExtensionDataSource(
      extensionName: pulumi.Input.fromValue(map['extensionName'] as String),
      extensionSettings: (() { final guardedValue = map['extensionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      inputDataSources: (() { final guardedValue = map['inputDataSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streams: (() { final guardedValue = map['streams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

