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
    required pulumi.Output<String> category,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<WorkbookResourceIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    required pulumi.Output<String> serializedData,
    pulumi.Output<String>? sourceId,
    pulumi.Output<String>? storageUri,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? version,
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
      category: pulumi.Output.create<String>(map['category'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<WorkbookResourceIdentity>(WorkbookResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      serializedData: pulumi.Output.create<String>(map['serializedData'] as String),
      sourceId: map['sourceId'] == null ? null : pulumi.Output.create<String>(map['sourceId'] as String),
      storageUri: map['storageUri'] == null ? null : pulumi.Output.create<String>(map['storageUri'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

