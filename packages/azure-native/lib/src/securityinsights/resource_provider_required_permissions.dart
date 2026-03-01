// ignore_for_file: unused_element, unnecessary_cast


/// Required permissions for the connector resource provider that define in ResourceProviders.
/// For more information about the permissions see <see href="https://docs.microsoft.com/en-us/azure/role-based-access-control/role-definitions#actions-format">here</see>.
class ResourceProviderRequiredPermissions {
  /// Gets or sets a value indicating whether the permission is custom actions (POST).
  final bool? action;
  /// Gets or sets a value indicating whether the permission is delete action (DELETE).
  final bool? delete;
  /// Gets or sets a value indicating whether the permission is read action (GET).
  final bool? read;
  /// Gets or sets a value indicating whether the permission is write action (PUT or PATCH).
  final bool? write;

  /// Creates a new [ResourceProviderRequiredPermissions].
  /// [action] Gets or sets a value indicating whether the permission is custom actions (POST).
  /// [delete] Gets or sets a value indicating whether the permission is delete action (DELETE).
  /// [read] Gets or sets a value indicating whether the permission is read action (GET).
  /// [write] Gets or sets a value indicating whether the permission is write action (PUT or PATCH).
  ResourceProviderRequiredPermissions({
    this.action,
    this.delete,
    this.read,
    this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'delete': ?delete,
      'read': ?read,
      'write': ?write,
    };
  }

  factory ResourceProviderRequiredPermissions.fromMap(Map<String, dynamic> map) {
    return ResourceProviderRequiredPermissions(
      action: map['action'] == null ? null : map['action'] as bool,
      delete: map['delete'] == null ? null : map['delete'] as bool,
      read: map['read'] == null ? null : map['read'] as bool,
      write: map['write'] == null ? null : map['write'] as bool,
    );
  }
}

