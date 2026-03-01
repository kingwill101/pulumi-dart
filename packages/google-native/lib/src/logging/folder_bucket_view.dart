import 'package:pulumi/pulumi.dart' as pulumi;
import 'folder_bucket_view_args.dart';

/// Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.
/// Auto-naming is currently not supported for this resource.
class FolderBucketView extends pulumi.CustomResource {
  late final pulumi.Output<String> bucketId;

  /// The creation timestamp of the view.
  late final pulumi.Output<String> createTime;

  /// Describes this view.
  late final pulumi.Output<String> description;

  /// Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  late final pulumi.Output<String> filter;
  late final pulumi.Output<String> folderId;
  late final pulumi.Output<String> location;

  /// The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  late final pulumi.Output<String> name;

  /// The last update timestamp of the view.
  late final pulumi.Output<String> updateTime;

  /// Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  late final pulumi.Output<String> viewId;

  /// Creates a new [FolderBucketView].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FolderBucketView]. {@macro pulumi_logging_v2_folder_bucket_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FolderBucketView(
    String name, {
    FolderBucketViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:logging/v2:FolderBucketView',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.bucketId = registerOutput<String>('bucketId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.filter = registerOutput<String>('filter');
    this.folderId = registerOutput<String>('folderId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.updateTime = registerOutput<String>('updateTime');
    this.viewId = registerOutput<String>('viewId');
  }
}
