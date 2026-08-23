// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains clientId or objectId (use only one, not both) of a user-assigned managed identity that has access to storage blob used in Run Command. Use an empty RunCommandManagedIdentity object in case of system-assigned identity. Make sure the Azure storage blob exists in case of scriptUri, and managed identity has been given access to blob's container with 'Storage Blob Data Reader' role assignment with scriptUri blob and 'Storage Blob Data Contributor' for Append blobs(outputBlobUri, errorBlobUri). In case of user assigned identity, make sure you add it under VM's identity. For more info on managed identity and Run Command, refer https://aka.ms/ManagedIdentity and https://aka.ms/RunCommandManaged.
class RunCommandManagedIdentity {
  /// Client Id (GUID value) of the user-assigned managed identity. ObjectId should not be used if this is provided.
  final pulumi.Input<String>? clientId;
  /// Object Id (GUID value) of the user-assigned managed identity. ClientId should not be used if this is provided.
  final pulumi.Input<String>? objectId;

  /// Creates a new [RunCommandManagedIdentity].
  /// [clientId] Client Id (GUID value) of the user-assigned managed identity. ObjectId should not be used if this is provided.
  /// [objectId] Object Id (GUID value) of the user-assigned managed identity. ClientId should not be used if this is provided.
  const RunCommandManagedIdentity({
    this.clientId,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'objectId': ?objectId,
    };
  }

  factory RunCommandManagedIdentity.fromMap(Map<String, dynamic> map) {
    return RunCommandManagedIdentity(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
