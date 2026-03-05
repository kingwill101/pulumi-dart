import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_access_monitor_args.dart';
import 'bucket_access_monitor_state.dart';

/// ## Import
///
/// OSS Bucket Access Monitor can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketAccessMonitor:BucketAccessMonitor example <id>
/// ```
class BucketAccessMonitorOss extends pulumi.CustomResource {
  /// The name of the bucket.
  late final pulumi.Output<String> bucket;
  /// Specifies whether to enable access tracking for the bucket. Valid values: Enabled: enables access tracking. Disabled: disables access tracking.
  late final pulumi.Output<String> status;

  /// Creates a new [BucketAccessMonitorOss].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketAccessMonitorOss]. {@macro pulumi_oss_bucket_access_monitor_bucket_access_monitor_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketAccessMonitorOss(
    String name, {
    BucketAccessMonitorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketAccessMonitor:BucketAccessMonitor',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [BucketAccessMonitorOss] resource's state with the given [name] and [id].
  static BucketAccessMonitorOss get(
    String name,
    pulumi.Input<String> id, {
    BucketAccessMonitorState? state,
  }) {
    return BucketAccessMonitorOss._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketAccessMonitorOss._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketAccessMonitor:BucketAccessMonitor',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    status = registerOutput<String>('status');
  }
}
