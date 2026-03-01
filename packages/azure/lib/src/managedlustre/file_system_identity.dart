// ignore_for_file: unused_element, unnecessary_cast


class FileSystemIdentity {
  /// A list of User Assigned Managed Identity IDs to be assigned to this Azure Managed Lustre File System. Changing this forces a new resource to be created.
  final List<String> identityIds;
  /// The type of Managed Service Identity that should be configured on this Azure Managed Lustre File System. Only possible value is `UserAssigned`. Changing this forces a new resource to be created.
  final String type;

  /// Creates a new [FileSystemIdentity].
  /// [identityIds] A list of User Assigned Managed Identity IDs to be assigned to this Azure Managed Lustre File System. Changing this forces a new resource to be created.
  /// [type] The type of Managed Service Identity that should be configured on this Azure Managed Lustre File System. Only possible value is `UserAssigned`. Changing this forces a new resource to be created.
  FileSystemIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory FileSystemIdentity.fromMap(Map<String, dynamic> map) {
    return FileSystemIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

