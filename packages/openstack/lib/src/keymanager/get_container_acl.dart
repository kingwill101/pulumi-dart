// ignore_for_file: unused_element, unnecessary_cast

import 'get_container_acl_read.dart';

class GetContainerAcl {
  final GetContainerAclRead read;

  /// Creates a new [GetContainerAcl].
  /// [read] Required.
  GetContainerAcl({
    required this.read,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'read': read.toMap(),
    };
  }

  factory GetContainerAcl.fromMap(Map<String, dynamic> map) {
    return GetContainerAcl(
      read: GetContainerAclRead.fromMap((map['read'] as Map).cast<String, dynamic>()),
    );
  }
}

