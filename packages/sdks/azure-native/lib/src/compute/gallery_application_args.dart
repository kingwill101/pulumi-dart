// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_custom_action.dart';
import 'operating_system_types.dart';

/// {@template pulumi_compute_gallery_application_args_doc}
/// The set of arguments for GalleryApplication.
/// {@endtemplate}
/// {@macro pulumi_compute_gallery_application_args_doc}
class GalleryApplicationArgs {
  /// A list of custom actions that can be performed with all of the Gallery Application Versions within this Gallery Application.
  final pulumi.Input<List<GalleryApplicationCustomAction>>? customActions;
  /// The description of this gallery Application Definition resource. This property is updatable.
  final pulumi.Input<String>? description;
  /// The end of life date of the gallery Application Definition. This property can be used for decommissioning purposes. This property is updatable.
  final pulumi.Input<String>? endOfLifeDate;
  /// The Eula agreement for the gallery Application Definition.
  final pulumi.Input<String>? eula;
  /// The name of the gallery Application Definition to be retrieved.
  final pulumi.Input<String>? galleryApplicationName;
  /// The name of the Shared Image Gallery.
  final pulumi.Input<String> galleryName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The privacy statement uri.
  final pulumi.Input<String>? privacyStatementUri;
  /// The release note uri.
  final pulumi.Input<String>? releaseNoteUri;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// This property allows you to specify the supported type of the OS that application is built for. Possible values are: **Windows,** **Linux.**
  final pulumi.Input<OperatingSystemTypes> supportedOSType;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GalleryApplicationArgs].
  /// [customActions] A list of custom actions that can be performed with all of the Gallery Application Versions within this Gallery Application.
  /// [description] The description of this gallery Application Definition resource. This property is updatable.
  /// [endOfLifeDate] The end of life date of the gallery Application Definition. This property can be used for decommissioning purposes. This property is updatable.
  /// [eula] The Eula agreement for the gallery Application Definition.
  /// [galleryApplicationName] The name of the gallery Application Definition to be retrieved.
  /// [galleryName] The name of the Shared Image Gallery.
  /// [location] The geo-location where the resource lives
  /// [privacyStatementUri] The privacy statement uri.
  /// [releaseNoteUri] The release note uri.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [supportedOSType] This property allows you to specify the supported type of the OS that application is built for. Possible values are: **Windows,** **Linux.**
  /// [tags] Resource tags.
  GalleryApplicationArgs({
    this.customActions,
    this.description,
    this.endOfLifeDate,
    this.eula,
    this.galleryApplicationName,
    required this.galleryName,
    this.location,
    this.privacyStatementUri,
    this.releaseNoteUri,
    required this.resourceGroupName,
    required this.supportedOSType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customActions': ?pulumi.Input.mapOptionalInputValue<List<GalleryApplicationCustomAction>, List<Map<String, dynamic>>>(customActions, (value) => pulumi.Input.encodeList<GalleryApplicationCustomAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'endOfLifeDate': ?endOfLifeDate,
      'eula': ?eula,
      'galleryApplicationName': ?galleryApplicationName,
      'galleryName': galleryName,
      'location': ?location,
      'privacyStatementUri': ?privacyStatementUri,
      'releaseNoteUri': ?releaseNoteUri,
      'resourceGroupName': resourceGroupName,
      'supportedOSType': pulumi.Input.mapInputValue<OperatingSystemTypes, String>(supportedOSType, (value) => value.value),
      'tags': ?tags,
    };
  }

  factory GalleryApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationArgs(
      customActions: map['customActions'] == null ? null : (pulumi.Input.decodeList<GalleryApplicationCustomAction>(map['customActions']!, (value) => GalleryApplicationCustomAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      endOfLifeDate: map['endOfLifeDate'] == null ? null : (map['endOfLifeDate']! as String).input(),
      eula: map['eula'] == null ? null : (map['eula']! as String).input(),
      galleryApplicationName: map['galleryApplicationName'] == null ? null : (map['galleryApplicationName']! as String).input(),
      galleryName: (map['galleryName'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      privacyStatementUri: map['privacyStatementUri'] == null ? null : (map['privacyStatementUri']! as String).input(),
      releaseNoteUri: map['releaseNoteUri'] == null ? null : (map['releaseNoteUri']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      supportedOSType: (OperatingSystemTypes.fromValue(map['supportedOSType'] as String)).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

