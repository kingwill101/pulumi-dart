// ignore_for_file: unused_element, unnecessary_cast


/// Describes the properties of a gallery script definition.
class GalleryScriptPropertiesResponse {
  /// The description of this gallery script definition resource. This property is updatable.
  final String? description;
  /// The end of life date of the gallery Script Definition. This property can be used for decommissioning purposes. This property is updatable.
  final String? endOfLifeDate;
  /// The Eula agreement (End User License Agreement) for the gallery Script Definition.
  final String? eula;
  /// The privacy statement uri.
  final String? privacyStatementUri;
  /// The provisioning state, which only appears in the response.
  final String provisioningState;
  /// The release note uri.
  final String? releaseNoteUri;
  /// This property allows you to specify the supported type of the OS that application is built for. Possible values are: **Windows,** **Linux.**
  final String supportedOSType;

  /// Creates a new [GalleryScriptPropertiesResponse].
  /// [description] The description of this gallery script definition resource. This property is updatable.
  /// [endOfLifeDate] The end of life date of the gallery Script Definition. This property can be used for decommissioning purposes. This property is updatable.
  /// [eula] The Eula agreement (End User License Agreement) for the gallery Script Definition.
  /// [privacyStatementUri] The privacy statement uri.
  /// [provisioningState] The provisioning state, which only appears in the response.
  /// [releaseNoteUri] The release note uri.
  /// [supportedOSType] This property allows you to specify the supported type of the OS that application is built for. Possible values are: **Windows,** **Linux.**
  GalleryScriptPropertiesResponse({
    this.description,
    this.endOfLifeDate,
    this.eula,
    this.privacyStatementUri,
    required this.provisioningState,
    this.releaseNoteUri,
    required this.supportedOSType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endOfLifeDate': ?endOfLifeDate,
      'eula': ?eula,
      'privacyStatementUri': ?privacyStatementUri,
      'provisioningState': provisioningState,
      'releaseNoteUri': ?releaseNoteUri,
      'supportedOSType': supportedOSType,
    };
  }

  factory GalleryScriptPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GalleryScriptPropertiesResponse(
      description: map['description'] == null ? null : map['description'] as String,
      endOfLifeDate: map['endOfLifeDate'] == null ? null : map['endOfLifeDate'] as String,
      eula: map['eula'] == null ? null : map['eula'] as String,
      privacyStatementUri: map['privacyStatementUri'] == null ? null : map['privacyStatementUri'] as String,
      provisioningState: map['provisioningState'] as String,
      releaseNoteUri: map['releaseNoteUri'] == null ? null : map['releaseNoteUri'] as String,
      supportedOSType: map['supportedOSType'] as String,
    );
  }
}

