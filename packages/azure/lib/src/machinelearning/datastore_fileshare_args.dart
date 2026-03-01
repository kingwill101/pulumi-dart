// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearning_datastore_fileshare_datastore_fileshare_args_doc}
/// The set of arguments for DatastoreFileshare.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_datastore_fileshare_datastore_fileshare_args_doc}
class DatastoreFileshareArgs {
  /// The access key of the Storage Account. Conflicts with `shared_access_signature`.
  final pulumi.Input<String>? accountKey;
  /// Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? description;
  /// The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String>? name;
  /// Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`.
  final pulumi.Input<String>? serviceDataIdentity;
  /// The Shared Access Signature of the Storage Account. Conflicts with `account_key`.
  final pulumi.Input<String>? sharedAccessSignature;
  /// The ID of the Storage Account File Share. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String> storageFileshareId;
  /// A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [DatastoreFileshareArgs].
  /// [accountKey] The access key of the Storage Account. Conflicts with `shared_access_signature`.
  /// [description] Text used to describe the asset. Changing this forces a new Machine Learning DataStore to be created.
  /// [name] The name of the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  /// [serviceDataIdentity] Specifies which identity to use when retrieving data from the specified source. Defaults to `None`. Possible values are `None`, `WorkspaceSystemAssignedIdentity` and `WorkspaceUserAssignedIdentity`.
  /// [sharedAccessSignature] The Shared Access Signature of the Storage Account. Conflicts with `account_key`.
  /// [storageFileshareId] The ID of the Storage Account File Share. Changing this forces a new Machine Learning DataStore to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning DataStore. Changing this forces a new Machine Learning DataStore to be created.
  /// [workspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning DataStore to be created.
  DatastoreFileshareArgs({
    String? accountKey,
    String? description,
    String? name,
    String? serviceDataIdentity,
    String? sharedAccessSignature,
    required String storageFileshareId,
    Map<String, String>? tags,
    required String workspaceId,
  }) :
      accountKey = pulumi.Input.asOptionalInput<String>(accountKey),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      serviceDataIdentity = pulumi.Input.asOptionalInput<String>(serviceDataIdentity),
      sharedAccessSignature = pulumi.Input.asOptionalInput<String>(sharedAccessSignature),
      storageFileshareId = pulumi.Input.asInput<String>(storageFileshareId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'description': ?description,
      'name': ?name,
      'serviceDataIdentity': ?serviceDataIdentity,
      'sharedAccessSignature': ?sharedAccessSignature,
      'storageFileshareId': storageFileshareId,
      'tags': ?tags,
      'workspaceId': workspaceId,
    };
  }

  factory DatastoreFileshareArgs.fromMap(Map<String, dynamic> map) {
    return DatastoreFileshareArgs(
      accountKey: map['accountKey'] == null ? null : map['accountKey'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      serviceDataIdentity: map['serviceDataIdentity'] == null ? null : map['serviceDataIdentity'] as String,
      sharedAccessSignature: map['sharedAccessSignature'] == null ? null : map['sharedAccessSignature'] as String,
      storageFileshareId: map['storageFileshareId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workspaceId: map['workspaceId'] as String,
    );
  }
}

