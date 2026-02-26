// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getOrganizationalUnits.
class GetOrganizationalUnitsArgs {
  /// Parent ID of the organizational unit.
  final Input<String> parentId;

  GetOrganizationalUnitsArgs({
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['parentId'] = parentId;
    return map;
  }

  factory GetOrganizationalUnitsArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationalUnitsArgs(
      parentId: Input.asInput<String>(map['parentId']),
    );
  }
}
