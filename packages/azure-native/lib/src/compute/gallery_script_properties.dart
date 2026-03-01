// ignore_for_file: unused_element, unnecessary_cast

import 'operating_system_types.dart';

/// Describes the properties of a gallery script definition.
class GalleryScriptProperties {
  /// The description of this gallery script definition resource. This property is updatable.
  final String? description;
  /// The end of life date of the gallery Script Definition. This property can be used for decommissioning purposes. This property is updatable.
  final String? endOfLifeDate;
  /// The Eula agreement (End User License Agreement) for the gallery Script Definition.
  final String? eula;
  /// The privacy statement uri.
  final String? privacyStatementUri;
  /// The release note uri.
  final String? releaseNoteUri;
  /// This property allows you to specify the supported type of the OS that application is built for. Possible values are: **Windows,** **Linux.**
  final OperatingSystemTypes supportedOSType;

  /// Creates a new [GalleryScriptProperties].
  /// [description] The description of this gallery script definition resource. This property is updatable.
  /// [endOfLifeDate] The end of life date of the gallery Script Definition. This property can be used for decommissioning purposes. This property is updatable.
  /// [eula] The Eula agreement (End User License Agreement) for the gallery Script Definition.
  /// [privacyStatementUri] The privacy statement uri.
  /// [releaseNoteUri] The release note uri.
  /// [supportedOSType] This property allows you to specify the supported type of the OS that application is built for. Possible values are: **Windows,** **Linux.**
  GalleryScriptProperties({
    this.description,
    this.endOfLifeDate,
    this.eula,
    this.privacyStatementUri,
    this.releaseNoteUri,
    required this.supportedOSType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endOfLifeDate': ?endOfLifeDate,
      'eula': ?eula,
      'privacyStatementUri': ?privacyStatementUri,
      'releaseNoteUri': ?releaseNoteUri,
      'supportedOSType': supportedOSType.value,
    };
  }

  factory GalleryScriptProperties.fromMap(Map<String, dynamic> map) {
    return GalleryScriptProperties(
      description: map['description'] == null ? null : map['description'] as String,
      endOfLifeDate: map['endOfLifeDate'] == null ? null : map['endOfLifeDate'] as String,
      eula: map['eula'] == null ? null : map['eula'] as String,
      privacyStatementUri: map['privacyStatementUri'] == null ? null : map['privacyStatementUri'] as String,
      releaseNoteUri: map['releaseNoteUri'] == null ? null : map['releaseNoteUri'] as String,
      supportedOSType: OperatingSystemTypes.fromValue(map['supportedOSType'] as String),
    );
  }
}

