// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gallery_application_custom_action_response.dart';
import 'system_data_response.dart';

/// Result data returned by getGalleryApplication.
class GetGalleryApplicationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// A list of custom actions that can be performed with all of the Gallery Application Versions within this Gallery Application.
  final List<GalleryApplicationCustomActionResponse>? customActions;
  /// The description of this gallery Application Definition resource. This property is updatable.
  final String? description;
  /// The end of life date of the gallery Application Definition. This property can be used for decommissioning purposes. This property is updatable.
  final String? endOfLifeDate;
  /// The Eula agreement for the gallery Application Definition.
  final String? eula;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// The privacy statement uri.
  final String? privacyStatementUri;
  /// The release note uri.
  final String? releaseNoteUri;
  /// This property allows you to specify the supported type of the OS that application is built for. Possible values are: **Windows,** **Linux.**
  final String? supportedOSType;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetGalleryApplicationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customActions] A list of custom actions that can be performed with all of the Gallery Application Versions within this Gallery Application.
  /// [description] The description of this gallery Application Definition resource. This property is updatable.
  /// [endOfLifeDate] The end of life date of the gallery Application Definition. This property can be used for decommissioning purposes. This property is updatable.
  /// [eula] The Eula agreement for the gallery Application Definition.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [privacyStatementUri] The privacy statement uri.
  /// [releaseNoteUri] The release note uri.
  /// [supportedOSType] This property allows you to specify the supported type of the OS that application is built for. Possible values are: **Windows,** **Linux.**
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetGalleryApplicationResult({
    this.azureApiVersion,
    this.customActions,
    this.description,
    this.endOfLifeDate,
    this.eula,
    this.id,
    this.location,
    this.name,
    this.privacyStatementUri,
    this.releaseNoteUri,
    this.supportedOSType,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'customActions': ?(() { final guardedValue = customActions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GalleryApplicationCustomActionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'endOfLifeDate': ?endOfLifeDate,
      'eula': ?eula,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'privacyStatementUri': ?privacyStatementUri,
      'releaseNoteUri': ?releaseNoteUri,
      'supportedOSType': ?supportedOSType,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetGalleryApplicationResult.fromMap(Map<String, dynamic> map) {
    return GetGalleryApplicationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customActions: (() { final guardedValue = map['customActions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GalleryApplicationCustomActionResponse>(guardedValue, (value) => GalleryApplicationCustomActionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endOfLifeDate: (() { final guardedValue = map['endOfLifeDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      eula: (() { final guardedValue = map['eula']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privacyStatementUri: (() { final guardedValue = map['privacyStatementUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      releaseNoteUri: (() { final guardedValue = map['releaseNoteUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedOSType: (() { final guardedValue = map['supportedOSType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
