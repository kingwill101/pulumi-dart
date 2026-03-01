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
    pulumi.Output<List<GalleryApplicationCustomAction>>? customActions,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endOfLifeDate,
    pulumi.Output<String>? eula,
    pulumi.Output<String>? galleryApplicationName,
    required pulumi.Output<String> galleryName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? privacyStatementUri,
    pulumi.Output<String>? releaseNoteUri,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<OperatingSystemTypes> supportedOSType,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      customActions = pulumi.Input.asOptionalInput<List<GalleryApplicationCustomAction>>(customActions),
      description = pulumi.Input.asOptionalInput<String>(description),
      endOfLifeDate = pulumi.Input.asOptionalInput<String>(endOfLifeDate),
      eula = pulumi.Input.asOptionalInput<String>(eula),
      galleryApplicationName = pulumi.Input.asOptionalInput<String>(galleryApplicationName),
      galleryName = pulumi.Input.asInput<String>(galleryName),
      location = pulumi.Input.asOptionalInput<String>(location),
      privacyStatementUri = pulumi.Input.asOptionalInput<String>(privacyStatementUri),
      releaseNoteUri = pulumi.Input.asOptionalInput<String>(releaseNoteUri),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      supportedOSType = pulumi.Input.asInput<OperatingSystemTypes>(supportedOSType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      customActions: map['customActions'] == null ? null : pulumi.Output.create<List<GalleryApplicationCustomAction>>(pulumi.Input.decodeList<GalleryApplicationCustomAction>(map['customActions'], (value) => GalleryApplicationCustomAction.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endOfLifeDate: map['endOfLifeDate'] == null ? null : pulumi.Output.create<String>(map['endOfLifeDate'] as String),
      eula: map['eula'] == null ? null : pulumi.Output.create<String>(map['eula'] as String),
      galleryApplicationName: map['galleryApplicationName'] == null ? null : pulumi.Output.create<String>(map['galleryApplicationName'] as String),
      galleryName: pulumi.Output.create<String>(map['galleryName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      privacyStatementUri: map['privacyStatementUri'] == null ? null : pulumi.Output.create<String>(map['privacyStatementUri'] as String),
      releaseNoteUri: map['releaseNoteUri'] == null ? null : pulumi.Output.create<String>(map['releaseNoteUri'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      supportedOSType: pulumi.Output.create<OperatingSystemTypes>(OperatingSystemTypes.fromValue(map['supportedOSType'] as String)),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

