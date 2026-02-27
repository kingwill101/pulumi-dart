import 'package:pulumi/pulumi.dart' hide Config;
import 'google_firestore_admin_v1beta1_index_field_response.dart';
import 'index_args5.dart';

/// Creates the specified index. A newly created index's initial state is `CREATING`. On completion of the returned google.longrunning.Operation, the state will be `READY`. If the index already exists, the call will return an `ALREADY_EXISTS` status. During creation, the process could result in an error, in which case the index will move to the `ERROR` state. The process can be recovered by fixing the data that caused the error, removing the index with delete, then re-creating the index with create. Indexes with a single field cannot be created.
class Index5 extends CustomResource {
  /// The collection ID to which this index applies. Required.
  late final Output<String> collectionId;
  late final Output<String> databaseId;

  /// The fields to index.
  late final Output<List<GoogleFirestoreAdminV1beta1IndexFieldResponse>> fields;

  /// The resource name of the index. Output only.
  late final Output<String> name;
  late final Output<String> project;

  /// The state of the index. Output only.
  late final Output<String> state;

  Index5(
    String name, {
    IndexArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:firestore/v1beta1:Index',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.collectionId = registerOutput<String>('collectionId');
    this.databaseId = registerOutput<String>('databaseId');
    this.fields =
        registerOutput<List<GoogleFirestoreAdminV1beta1IndexFieldResponse>>(
            'fields');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
  }
}
