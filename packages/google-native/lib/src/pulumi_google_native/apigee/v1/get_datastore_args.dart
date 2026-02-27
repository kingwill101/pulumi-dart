// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getDatastore.
class GetDatastoreArgs {
  final pulumi.Input<String> datastoreId;
  final pulumi.Input<String> organizationId;

  GetDatastoreArgs({
    required this.datastoreId,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datastoreId'] = datastoreId;
    map['organizationId'] = organizationId;
    return map;
  }

  factory GetDatastoreArgs.fromMap(Map<String, dynamic> map) {
    return GetDatastoreArgs(
      datastoreId: pulumi.Input.asInput<String>(map['datastoreId']),
      organizationId: pulumi.Input.asInput<String>(map['organizationId']),
    );
  }
}
