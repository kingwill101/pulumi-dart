// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_get_datastore_args_doc}
/// Arguments for getDatastore.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_get_datastore_args_doc}
class GetDatastoreArgs {
  final pulumi.Input<String> datastoreId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetDatastoreArgs].
  /// [datastoreId] Required.
  /// [organizationId] Required.
  GetDatastoreArgs({
    required String datastoreId,
    required String organizationId,
  }) : datastoreId = pulumi.Input.asInput<String>(datastoreId),
       organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastoreId': datastoreId,
      'organizationId': organizationId,
    };
  }

  factory GetDatastoreArgs.fromMap(Map<String, dynamic> map) {
    return GetDatastoreArgs(
      datastoreId: map['datastoreId'] as String,
      organizationId: map['organizationId'] as String,
    );
  }
}
