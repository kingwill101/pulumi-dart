import 'package:pulumi/pulumi.dart' as pulumi;
import 'document_args.dart';

/// In Cloud Firestore, the unit of storage is the document. A document is a lightweight record
/// that contains fields, which map to values. Each document is identified by a name.
///
///
/// To get more information about Document, see:
///
/// * [API documentation](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/firestore/docs/manage-data/add-data)
///
/// > **Warning:** This resource creates a Firestore Document on a project that already has
/// a Firestore database. If you haven't already created it, you may
/// create a `gcp.firestore.Database` resource with `type` set to
/// `"FIRESTORE_NATIVE"` and `location_id` set to your chosen location.
/// If you wish to use App Engine, you may instead create a
/// `gcp.appengine.Application` resource with `database_type` set to
/// `"CLOUD_FIRESTORE"`. Your Firestore location will be the same as
/// the App Engine location specified.
///
/// ## Example Usage
///
/// ### Firestore Document Basic
///
///
///
/// ### Firestore Document Nested Document
///
///
///
///
/// ## Import
///
/// Document can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Document can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firestore/document:Document default {{name}}
/// ```
class Document extends pulumi.CustomResource {
  /// The collection ID, relative to database. For example: chatrooms or chatrooms/my-document/private-messages.
  late final pulumi.Output<String> collection;

  /// Creation timestamp in RFC3339 format.
  late final pulumi.Output<String> createTime;

  /// The Firestore database id. Defaults to `"(default)"`.
  late final pulumi.Output<String?> database;

  /// The client-assigned document ID to use for this document during creation.
  late final pulumi.Output<String> documentId;

  /// The document's [fields](https://cloud.google.com/firestore/docs/reference/rest/v1/projects.databases.documents) formated as a json string.
  late final pulumi.Output<String> fields;

  /// A server defined name for this document. Format:
  /// `projects/{{project_id}}/databases/{{database_id}}/documents/{{path}}/{{document_id}}`
  late final pulumi.Output<String> name;

  /// A relative path to the collection this document exists within
  late final pulumi.Output<String> path;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Last update timestamp in RFC3339 format.
  late final pulumi.Output<String> updateTime;

  Document(
    String name, {
    DocumentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:firestore/document:Document',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.collection = registerOutput<String>('collection');
    this.createTime = registerOutput<String>('createTime');
    this.database = registerOutput<String?>('database');
    this.documentId = registerOutput<String>('documentId');
    this.fields = registerOutput<String>('fields');
    this.name = registerOutput<String>('name');
    this.path = registerOutput<String>('path');
    this.project = registerOutput<String>('project');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
