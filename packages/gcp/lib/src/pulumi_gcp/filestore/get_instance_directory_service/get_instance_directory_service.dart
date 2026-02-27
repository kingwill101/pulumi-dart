// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_instance_directory_service_ldap/get_instance_directory_service_ldap.dart';

class GetInstanceDirectoryService {
  /// Configuration for LDAP servers.
  final List<GetInstanceDirectoryServiceLdap> ldaps;

  GetInstanceDirectoryService({
    required this.ldaps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['ldaps'] = pulumi.Input.encodeList<GetInstanceDirectoryServiceLdap,
        Map<String, dynamic>>(ldaps, (value) => value.toMap());
    return map;
  }

  factory GetInstanceDirectoryService.fromMap(Map<String, dynamic> map) {
    return GetInstanceDirectoryService(
      ldaps: pulumi.Input.decodeList<GetInstanceDirectoryServiceLdap>(
          map['ldaps'],
          (value) => GetInstanceDirectoryServiceLdap.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
