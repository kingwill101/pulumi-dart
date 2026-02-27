// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getDatastore.
class GetDatastoreArgs {
  final Input<String> datastoreId;
  final Input<String> organizationId;

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
      datastoreId: Input.asInput<String>(map['datastoreId']),
      organizationId: Input.asInput<String>(map['organizationId']),
    );
  }
}
