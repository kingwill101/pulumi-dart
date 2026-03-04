// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the properties of a gallery script definition.
class GalleryScriptPropertiesResponse {
  /// The description of this gallery script definition resource. This property is updatable.
  final pulumi.Input<String>? description;

  /// The end of life date of the gallery Script Definition. This property can be used for decommissioning purposes. This property is updatable.
  final pulumi.Input<String>? endOfLifeDate;

  /// The Eula agreement (End User License Agreement) for the gallery Script Definition.
  final pulumi.Input<String>? eula;

  /// The privacy statement uri.
  final pulumi.Input<String>? privacyStatementUri;

  /// The provisioning state, which only appears in the response.
  final pulumi.Input<String> provisioningState;

  /// The release note uri.
  final pulumi.Input<String>? releaseNoteUri;

  /// This property allows you to specify the supported type of the OS that application is built for. Possible values are: **Windows,** **Linux.**
  final pulumi.Input<String> supportedOSType;

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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endOfLifeDate: (() {
        final guardedValue = map['endOfLifeDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eula: (() {
        final guardedValue = map['eula'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      privacyStatementUri: (() {
        final guardedValue = map['privacyStatementUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      releaseNoteUri: (() {
        final guardedValue = map['releaseNoteUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      supportedOSType: pulumi.Input.fromValue(map['supportedOSType'] as String),
    );
  }
}
