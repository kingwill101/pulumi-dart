// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'keytab_information.dart';

/// Active Directory information that related to the resource.
class ActiveDirectoryInformation {
  /// Keytab information that is used for the Sql Managed Instance when Active Directory authentication is used.
  final pulumi.Input<KeytabInformation>? keytabInformation;

  /// Creates a new [ActiveDirectoryInformation].
  /// [keytabInformation] Keytab information that is used for the Sql Managed Instance when Active Directory authentication is used.
  ActiveDirectoryInformation({
    this.keytabInformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keytabInformation': ?pulumi.Input.mapOptionalInputValue<KeytabInformation, Map<String, dynamic>>(keytabInformation, (value) => value.toMap()),
    };
  }

  factory ActiveDirectoryInformation.fromMap(Map<String, dynamic> map) {
    return ActiveDirectoryInformation(
      keytabInformation: (() { final guardedValue = map['keytabInformation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeytabInformation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

