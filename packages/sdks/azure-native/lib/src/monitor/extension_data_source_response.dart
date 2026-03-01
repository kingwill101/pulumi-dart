// ignore_for_file: unused_element, unnecessary_cast


/// Definition of which data will be collected from a separate VM extension that integrates with the Azure Monitor Agent.
/// Collected from either Windows and Linux machines, depending on which extension is defined.
class ExtensionDataSourceResponse {
  /// The name of the VM extension.
  final String extensionName;
  /// The extension settings. The format is specific for particular extension.
  final dynamic extensionSettings;
  /// The list of data sources this extension needs data from.
  final List<String>? inputDataSources;
  /// A friendly name for the data source.
  /// This name should be unique across all data sources (regardless of type) within the data collection rule.
  final String? name;
  /// List of streams that this data source will be sent to.
  /// A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to.
  final List<String>? streams;

  /// Creates a new [ExtensionDataSourceResponse].
  /// [extensionName] The name of the VM extension.
  /// [extensionSettings] The extension settings. The format is specific for particular extension.
  /// [inputDataSources] The list of data sources this extension needs data from.
  /// [name] A friendly name for the data source.
  /// [streams] List of streams that this data source will be sent to.
  ExtensionDataSourceResponse({
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

  factory ExtensionDataSourceResponse.fromMap(Map<String, dynamic> map) {
    return ExtensionDataSourceResponse(
      extensionName: map['extensionName'] as String,
      extensionSettings: map['extensionSettings'] == null ? null : map['extensionSettings'],
      inputDataSources: map['inputDataSources'] == null ? null : (map['inputDataSources'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      streams: map['streams'] == null ? null : (map['streams'] as List).cast<String>(),
    );
  }
}

