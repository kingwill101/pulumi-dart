// ignore_for_file: unused_element, unnecessary_cast

import 'keytab_information.dart';

/// Active Directory information that related to the resource.
class ActiveDirectoryInformation {
  /// Keytab information that is used for the Sql Managed Instance when Active Directory authentication is used.
  final KeytabInformation? keytabInformation;

  /// Creates a new [ActiveDirectoryInformation].
  /// [keytabInformation] Keytab information that is used for the Sql Managed Instance when Active Directory authentication is used.
  ActiveDirectoryInformation({
    this.keytabInformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keytabInformation': ?keytabInformation == null ? null : keytabInformation!.toMap(),
    };
  }

  factory ActiveDirectoryInformation.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryInformation(
      keytabInformation: map['keytabInformation'] == null ? null : KeytabInformation.fromMap((map['keytabInformation'] as Map).cast<String, dynamic>()),
    );
  }
}

