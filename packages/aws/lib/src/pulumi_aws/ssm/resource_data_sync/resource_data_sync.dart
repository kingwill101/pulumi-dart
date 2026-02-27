import 'package:pulumi/pulumi.dart' as pulumi;
import '../resource_data_sync_s3_destination/resource_data_sync_s3_destination.dart';
import 'resource_data_sync_args.dart';

/// Provides a SSM resource data sync.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SSM resource data sync using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/resourceDataSync:ResourceDataSync example example-name
/// ```
class ResourceDataSync extends pulumi.CustomResource {
  /// Name for the configuration.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Amazon S3 configuration details for the sync.
  late final pulumi.Output<ResourceDataSyncS3Destination> s3Destination;

  ResourceDataSync(
    String name, {
    ResourceDataSyncArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/resourceDataSync:ResourceDataSync',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.s3Destination =
        registerOutput<ResourceDataSyncS3Destination>('s3Destination');
  }
}
