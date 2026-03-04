// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_workbook_managed_identity.dart';

/// {@template pulumi_applicationinsights_my_workbook_args_doc}
/// The set of arguments for MyWorkbook.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_my_workbook_args_doc}
class MyWorkbookArgs {
  /// Workbook category, as defined by the user at creation time.
  final pulumi.Input<String> category;

  /// The user-defined name of the private workbook.
  final pulumi.Input<String> displayName;

  /// Azure resource Id
  final pulumi.Input<String>? id;

  /// Identity used for BYOS
  final pulumi.Input<MyWorkbookManagedIdentity>? identity;

  /// The kind of workbook. Choices are user and shared.
  final pulumi.Input<String>? kind;

  /// Resource location
  final pulumi.Input<String>? location;

  /// Azure resource name
  final pulumi.Input<String>? name;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the Application Insights component resource.
  final pulumi.Input<String>? resourceName;

  /// Configuration of this particular private workbook. Configuration data is a string containing valid JSON
  final pulumi.Input<String> serializedData;

  /// Optional resourceId for a source resource.
  final pulumi.Input<String>? sourceId;

  /// BYOS Storage Account URI
  final pulumi.Input<String>? storageUri;

  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Azure resource type
  final pulumi.Input<String>? type;

  /// This instance's version of the data model. This can change as new features are added that can be marked private workbook.
  final pulumi.Input<String>? version;

  /// Creates a new [MyWorkbookArgs].
  /// [category] Workbook category, as defined by the user at creation time.
  /// [displayName] The user-defined name of the private workbook.
  /// [id] Azure resource Id
  /// [identity] Identity used for BYOS
  /// [kind] The kind of workbook. Choices are user and shared.
  /// [location] Resource location
  /// [name] Azure resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the Application Insights component resource.
  /// [serializedData] Configuration of this particular private workbook. Configuration data is a string containing valid JSON
  /// [sourceId] Optional resourceId for a source resource.
  /// [storageUri] BYOS Storage Account URI
  /// [tags] Resource tags
  /// [type] Azure resource type
  /// [version] This instance's version of the data model. This can change as new features are added that can be marked private workbook.
  MyWorkbookArgs({
    required this.category,
    required this.displayName,
    this.id,
    this.identity,
    this.kind,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.resourceName,
    required this.serializedData,
    this.sourceId,
    this.storageUri,
    this.tags,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'displayName': displayName,
      'id': ?id,
      'identity':
          ?pulumi.Input.mapOptionalInputValue<
            MyWorkbookManagedIdentity,
            Map<String, dynamic>
          >(identity, (value) => value.toMap()),
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'resourceName': ?resourceName,
      'serializedData': serializedData,
      'sourceId': ?sourceId,
      'storageUri': ?storageUri,
      'tags': ?tags,
      'type': ?type,
      'version': ?version,
    };
  }

  factory MyWorkbookArgs.fromMap(Map<String, dynamic> map) {
    return MyWorkbookArgs(
      category: pulumi.Input.fromValue(map['category'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MyWorkbookManagedIdentity.fromMap(
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
      name: (() {
        final guardedValue = map['name'];
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
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
