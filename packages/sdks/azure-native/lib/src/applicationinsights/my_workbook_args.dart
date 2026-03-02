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
      'identity': ?pulumi.Input.mapOptionalInputValue<MyWorkbookManagedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
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
      category: (map['category'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      identity: map['identity'] == null ? null : (MyWorkbookManagedIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: map['resourceName'] == null ? null : (map['resourceName'] as String).input(),
      serializedData: (map['serializedData'] as String).input(),
      sourceId: map['sourceId'] == null ? null : (map['sourceId'] as String).input(),
      storageUri: map['storageUri'] == null ? null : (map['storageUri'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

