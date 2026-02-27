import 'package:pulumi/pulumi.dart';
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
class ResourceDataSync extends CustomResource {
  /// Name for the configuration.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon S3 configuration details for the sync.
  late final Output<ResourceDataSyncS3Destination> s3Destination;

  ResourceDataSync(
    String name, {
    ResourceDataSyncArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/resourceDataSync:ResourceDataSync',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.s3Destination =
        registerOutput<ResourceDataSyncS3Destination>('s3Destination');
  }
}
