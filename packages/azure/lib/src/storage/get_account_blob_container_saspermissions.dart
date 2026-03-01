// ignore_for_file: unused_element, unnecessary_cast


class GetAccountBlobContainerSASPermissions {
  /// Should Add permissions be enabled for this SAS?
  final bool add;
  /// Should Create permissions be enabled for this SAS?
  final bool create;
  /// Should Delete permissions be enabled for this SAS?
  final bool delete;
  /// Should List permissions be enabled for this SAS?
  ///
  /// Refer to the [SAS creation reference from Azure](https://docs.microsoft.com/rest/api/storageservices/create-service-sas)
  /// for additional details on the fields above.
  final bool list;
  /// Should Read permissions be enabled for this SAS?
  final bool read;
  /// Should Write permissions be enabled for this SAS?
  final bool write;

  /// Creates a new [GetAccountBlobContainerSASPermissions].
  /// [add] Should Add permissions be enabled for this SAS?
  /// [create] Should Create permissions be enabled for this SAS?
  /// [delete] Should Delete permissions be enabled for this SAS?
  /// [list] Should List permissions be enabled for this SAS?
  /// [read] Should Read permissions be enabled for this SAS?
  /// [write] Should Write permissions be enabled for this SAS?
  GetAccountBlobContainerSASPermissions({
    required this.add,
    required this.create,
    required this.delete,
    required this.list,
    required this.read,
    required this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'add': add,
      'create': create,
      'delete': delete,
      'list': list,
      'read': read,
      'write': write,
    };
  }

  factory GetAccountBlobContainerSASPermissions.fromMap(Map<String, dynamic> map) {
    return GetAccountBlobContainerSASPermissions(
      add: map['add'] as bool,
      create: map['create'] as bool,
      delete: map['delete'] as bool,
      list: map['list'] as bool,
      read: map['read'] as bool,
      write: map['write'] as bool,
    );
  }
}

