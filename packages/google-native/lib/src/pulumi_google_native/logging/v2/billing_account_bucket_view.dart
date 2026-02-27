import 'package:pulumi/pulumi.dart' hide Config;
import 'billing_account_bucket_view_args.dart';

/// Creates a view over log entries in a log bucket. A bucket may contain a maximum of 30 views.
/// Auto-naming is currently not supported for this resource.
class BillingAccountBucketView extends CustomResource {
  late final Output<String> billingAccountId;
  late final Output<String> bucketId;

  /// The creation timestamp of the view.
  late final Output<String> createTime;

  /// Describes this view.
  late final Output<String> description;

  /// Filter that restricts which log entries in a bucket are visible in this view.Filters are restricted to be a logical AND of ==/!= of any of the following: originating project/folder/organization/billing account. resource type log idFor example:SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  late final Output<String> filter;
  late final Output<String> location;

  /// The resource name of the view.For example:projects/my-project/locations/global/buckets/my-bucket/views/my-view
  late final Output<String> name;

  /// The last update timestamp of the view.
  late final Output<String> updateTime;

  /// Required. A client-assigned identifier such as "my-view". Identifiers are limited to 100 characters and can include only letters, digits, underscores, hyphens, and periods.
  late final Output<String> viewId;

  BillingAccountBucketView(
    String name, {
    BillingAccountBucketViewArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:logging/v2:BillingAccountBucketView',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.billingAccountId = registerOutput<String>('billingAccountId');
    this.bucketId = registerOutput<String>('bucketId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.filter = registerOutput<String>('filter');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.updateTime = registerOutput<String>('updateTime');
    this.viewId = registerOutput<String>('viewId');
  }
}
