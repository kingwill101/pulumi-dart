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
    required this.category,
    this.description,
    required this.displayName,
    this.identity,
    this.kind,
    this.location,
    required this.resourceGroupName,
    this.resourceName,
    required this.serializedData,
    this.sourceId,
    this.storageUri,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'description': ?description,
      'displayName': displayName,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            WorkbookResourceIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
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
      category: pulumi.Input.fromValue(map['category'] as String),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkbookResourceIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      resourceName: (() {
        final guardedValue = map['resourceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serializedData: pulumi.Input.fromValue(map['serializedData'] as String),
      sourceId: (() {
        final guardedValue = map['sourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      storageUri: (() {
        final guardedValue = map['storageUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
