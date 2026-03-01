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
    required pulumi.Output<String> category,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? id,
    pulumi.Output<MyWorkbookManagedIdentity>? identity,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceName,
    required pulumi.Output<String> serializedData,
    pulumi.Output<String>? sourceId,
    pulumi.Output<String>? storageUri,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? type,
    pulumi.Output<String>? version,
  }) :
      category = pulumi.Input.asInput<String>(category),
      displayName = pulumi.Input.asInput<String>(displayName),
      id = pulumi.Input.asOptionalInput<String>(id),
      identity = pulumi.Input.asOptionalInput<MyWorkbookManagedIdentity>(identity),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asOptionalInput<String>(resourceName),
      serializedData = pulumi.Input.asInput<String>(serializedData),
      sourceId = pulumi.Input.asOptionalInput<String>(sourceId),
      storageUri = pulumi.Input.asOptionalInput<String>(storageUri),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type),
      version = pulumi.Input.asOptionalInput<String>(version);

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
      category: pulumi.Output.create<String>(map['category'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      id: map['id'] == null ? null : pulumi.Output.create<String>(map['id'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<MyWorkbookManagedIdentity>(MyWorkbookManagedIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: map['resourceName'] == null ? null : pulumi.Output.create<String>(map['resourceName'] as String),
      serializedData: pulumi.Output.create<String>(map['serializedData'] as String),
      sourceId: map['sourceId'] == null ? null : pulumi.Output.create<String>(map['sourceId'] as String),
      storageUri: map['storageUri'] == null ? null : pulumi.Output.create<String>(map['storageUri'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

