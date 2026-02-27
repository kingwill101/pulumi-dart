import 'package:pulumi/pulumi.dart';
import 'storage_bucket_args.dart';

/// An association between a Firebase project and a Google Cloud Storage bucket.
/// This association enables integration of Cloud Storage buckets with Firebase such as Firebase SDKS, Authentication, and Security Rules.
///
/// To get more information about Bucket, see:
///
/// * [API documentation](https://firebase.google.com/docs/reference/rest/storage/rest/v1beta/projects.buckets)
/// * How-to Guides
/// * [Official Documentation](https://firebase.google.com/docs/storage/)
///
/// ## Example Usage
///
/// ### Firebasestorage Bucket Basic
///
///
///
///
/// ## Import
///
/// Bucket can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/buckets/{{bucket_id}}`
///
/// * `{{project}}/{{bucket_id}}`
///
/// * `{{bucket_id}}`
///
/// When using the `pulumi import` command, Bucket can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:firebase/storageBucket:StorageBucket default projects/{{project}}/buckets/{{bucket_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/storageBucket:StorageBucket default {{project}}/{{bucket_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:firebase/storageBucket:StorageBucket default {{bucket_id}}
/// ```
class StorageBucket extends CustomResource {
  /// Required. Immutable. The ID of the underlying Google Cloud Storage bucket
  late final Output<String?> bucketId;

  /// Resource name of the bucket in the format projects/PROJECT_IDENTIFIER/buckets/BUCKET_ID
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  StorageBucket(
    String name, {
    StorageBucketArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:firebase/storageBucket:StorageBucket',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucketId = registerOutput<String?>('bucketId');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
  }
}
