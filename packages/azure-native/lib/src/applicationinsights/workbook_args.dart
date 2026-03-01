// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workbook_resource_identity.dart';

/// {@template pulumi_applicationinsights_workbook_args_doc}
/// The set of arguments for Workbook.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_workbook_args_doc}
class WorkbookArgs {
  /// Workbook category, as defined by the user at creation time.
  final pulumi.Input<String> category;
  /// The description of the workbook.
  final pulumi.Input<String>? description;
  /// The user-defined name (display name) of the workbook.
  final pulumi.Input<String> displayName;
  /// Identity used for BYOS
  final pulumi.Input<WorkbookResourceIdentity>? identity;
  /// The kind of workbook. Only valid value is shared.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workbook resource. The value must be an UUID.
  final pulumi.Input<String>? resourceName;
  /// Configuration of this particular workbook. Configuration data is a string containing valid JSON
  final pulumi.Input<String> serializedData;
  /// ResourceId for a source resource.
  final pulumi.Input<String>? sourceId;
  /// The resourceId to the storage account when bring your own storage is used
  final pulumi.Input<String>? storageUri;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Workbook schema version format, like 'Notebook/1.0', which should match the workbook in serializedData
  final pulumi.Input<String>? version;

  /// Creates a new [WorkbookArgs].
  /// [category] Workbook category, as defined by the user at creation time.
  /// [description] The description of the workbook.
  /// [displayName] The user-defined name (display name) of the workbook.
  /// [identity] Identity used for BYOS
  /// [kind] The kind of workbook. Only valid value is shared.
  /// [location] The geo-location where the resource lives
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the workbook resource. The value must be an UUID.
  /// [serializedData] Configuration of this particular workbook. Configuration data is a string containing valid JSON
  /// [sourceId] ResourceId for a source resource.
  /// [storageUri] The resourceId to the storage account when bring your own storage is used
  /// [tags] Resource tags.
  /// [version] Workbook schema version format, like 'Notebook/1.0', which should match the workbook in serializedData
  WorkbookArgs({
    required String category,
    String? description,
    required String displayName,
    WorkbookResourceIdentity? identity,
    String? kind,
    String? location,
    required String resourceGroupName,
    String? resourceName,
    required String serializedData,
    String? sourceId,
    String? storageUri,
    Map<String, String>? tags,
    String? version,
  }) :
      category = pulumi.Input.asInput<String>(category),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      identity = pulumi.Input.asOptionalInput<WorkbookResourceIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      serializedData = pulumi.Input.asInput<String>(serializedData),
      sourceId = pulumi.Input.asOptionalInput<String>(sourceId),
      storageUri = pulumi.Input.asOptionalInput<String>(storageUri),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'description': ?description,
      'displayName': displayName,
      'identity': ?pulumi.Input.mapOptionalInputValue<WorkbookResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'serializedData': serializedData,
      'sourceId': ?sourceId,
      'storageUri': ?storageUri,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory WorkbookArgs.fromMap(Map<String, dynamic> map) {
    return WorkbookArgs(
      category: map['category'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] as String,
      identity: map['identity'] == null ? null : WorkbookResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] == null ? null : map['resourceName'] as String,
      serializedData: map['serializedData'] as String,
      sourceId: map['sourceId'] == null ? null : map['sourceId'] as String,
      storageUri: map['storageUri'] == null ? null : map['storageUri'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

