import 'package:pulumi/pulumi.dart' as pulumi;
import '../kx_dataview_segment_configuration/kx_dataview_segment_configuration.dart';
import 'kx_dataview_args.dart';

/// Resource for managing an AWS FinSpace Kx Dataview.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an AWS FinSpace Kx Cluster using the `id` (environment ID and cluster name, comma-delimited). For example:
///
/// ```sh
/// $ pulumi import aws:finspace/kxDataview:KxDataview example n3ceo7wqxoxcti5tujqwzs,my-tf-kx-database,my-tf-kx-dataview
/// ```
class KxDataview extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) identifier of the KX dataview.
  late final pulumi.Output<String> arn;

  /// The option to specify whether you want to apply all the future additions and corrections automatically to the dataview, when you ingest new changesets. The default value is false.
  late final pulumi.Output<bool> autoUpdate;

  /// The identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  late final pulumi.Output<String?> availabilityZoneId;

  /// The number of availability zones you want to assign per cluster. This can be one of the following:
  /// * `SINGLE` - Assigns one availability zone per cluster.
  /// * `MULTI` - Assigns all the availability zones per cluster.
  late final pulumi.Output<String> azMode;

  /// A unique identifier of the changeset of the database that you want to use to ingest data.
  late final pulumi.Output<String?> changesetId;

  /// Timestamp at which the dataview was created in FinSpace. Value determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  late final pulumi.Output<String> createdTimestamp;

  /// The name of the database where you want to create a dataview.
  late final pulumi.Output<String> databaseName;

  /// A description for the dataview.
  late final pulumi.Output<String?> description;

  /// Unique identifier for the KX environment.
  late final pulumi.Output<String> environmentId;

  /// The last time that the dataview was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  late final pulumi.Output<String> lastModifiedTimestamp;

  /// A unique identifier for the dataview.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;

  /// The option to specify whether you want to make the dataview writable to perform database maintenance. The following are some considerations related to writable dataviews.
  /// * You cannot create partial writable dataviews. When you create writeable dataviews you must provide the entire database path. You cannot perform updates on a writeable dataview. Hence, `auto_update` must be set as `false` if `read_write` is `true` for a dataview.
  /// * You must also use a unique volume for creating a writeable dataview. So, if you choose a volume that is already in use by another dataview, the dataview creation fails.
  /// * Once you create a dataview as writeable, you cannot change it to read-only. So, you cannot update the `read_write` parameter later.
  late final pulumi.Output<bool?> readWrite;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See segment_configurations below.
  late final pulumi.Output<List<KxDataviewSegmentConfiguration>?>
      segmentConfigurations;
  late final pulumi.Output<String> status;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  KxDataview(
    String name, {
    KxDataviewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:finspace/kxDataview:KxDataview',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoUpdate = registerOutput<bool>('autoUpdate');
    this.availabilityZoneId = registerOutput<String?>('availabilityZoneId');
    this.azMode = registerOutput<String>('azMode');
    this.changesetId = registerOutput<String?>('changesetId');
    this.createdTimestamp = registerOutput<String>('createdTimestamp');
    this.databaseName = registerOutput<String>('databaseName');
    this.description = registerOutput<String?>('description');
    this.environmentId = registerOutput<String>('environmentId');
    this.lastModifiedTimestamp =
        registerOutput<String>('lastModifiedTimestamp');
    this.name = registerOutput<String>('name');
    this.readWrite = registerOutput<bool?>('readWrite');
    this.region = registerOutput<String>('region');
    this.segmentConfigurations =
        registerOutput<List<KxDataviewSegmentConfiguration>?>(
            'segmentConfigurations');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
