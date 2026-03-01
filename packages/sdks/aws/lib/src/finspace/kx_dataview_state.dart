// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_dataview_segment_configuration.dart';

/// Input properties used for looking up and filtering KxDataview resources.
class KxDataviewState {
  /// Amazon Resource Name (ARN) identifier of the KX dataview.
  final pulumi.Input<String>? arn;
  /// The option to specify whether you want to apply all the future additions and corrections automatically to the dataview, when you ingest new changesets. The default value is false.
  final pulumi.Input<bool>? autoUpdate;
  /// The identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  final pulumi.Input<String>? availabilityZoneId;
  /// The number of availability zones you want to assign per cluster. This can be one of the following:
  /// * `SINGLE` - Assigns one availability zone per cluster.
  /// * `MULTI` - Assigns all the availability zones per cluster.
  final pulumi.Input<String>? azMode;
  /// A unique identifier of the changeset of the database that you want to use to ingest data.
  final pulumi.Input<String>? changesetId;
  /// Timestamp at which the dataview was created in FinSpace. Value determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  final pulumi.Input<String>? createdTimestamp;
  /// The name of the database where you want to create a dataview.
  final pulumi.Input<String>? databaseName;
  /// A description for the dataview.
  final pulumi.Input<String>? description;
  /// Unique identifier for the KX environment.
  final pulumi.Input<String>? environmentId;
  /// The last time that the dataview was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  final pulumi.Input<String>? lastModifiedTimestamp;
  /// A unique identifier for the dataview.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// The option to specify whether you want to make the dataview writable to perform database maintenance. The following are some considerations related to writable dataviews.
  /// * You cannot create partial writable dataviews. When you create writeable dataviews you must provide the entire database path. You cannot perform updates on a writeable dataview. Hence, `auto_update` must be set as `false` if `read_write` is `true` for a dataview.
  /// * You must also use a unique volume for creating a writeable dataview. So, if you choose a volume that is already in use by another dataview, the dataview creation fails.
  /// * Once you create a dataview as writeable, you cannot change it to read-only. So, you cannot update the `read_write` parameter later.
  final pulumi.Input<bool>? readWrite;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See segment_configurations below.
  final pulumi.Input<List<KxDataviewSegmentConfiguration>>? segmentConfigurations;
  final pulumi.Input<String>? status;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [KxDataviewState].
  /// [arn] Amazon Resource Name (ARN) identifier of the KX dataview.
  /// [autoUpdate] The option to specify whether you want to apply all the future additions and corrections automatically to the dataview, when you ingest new changesets. The default value is false.
  /// [availabilityZoneId] The identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  /// [azMode] The number of availability zones you want to assign per cluster. This can be one of the following:
  /// [changesetId] A unique identifier of the changeset of the database that you want to use to ingest data.
  /// [createdTimestamp] Timestamp at which the dataview was created in FinSpace. Value determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  /// [databaseName] The name of the database where you want to create a dataview.
  /// [description] A description for the dataview.
  /// [environmentId] Unique identifier for the KX environment.
  /// [lastModifiedTimestamp] The last time that the dataview was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  /// [name] A unique identifier for the dataview.
  /// [readWrite] The option to specify whether you want to make the dataview writable to perform database maintenance. The following are some considerations related to writable dataviews.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [segmentConfigurations] The configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See segment_configurations below.
  /// [status] Optional.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  KxDataviewState({
    pulumi.Output<String>? arn,
    pulumi.Output<bool>? autoUpdate,
    pulumi.Output<String>? availabilityZoneId,
    pulumi.Output<String>? azMode,
    pulumi.Output<String>? changesetId,
    pulumi.Output<String>? createdTimestamp,
    pulumi.Output<String>? databaseName,
    pulumi.Output<String>? description,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? lastModifiedTimestamp,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? readWrite,
    pulumi.Output<String>? region,
    pulumi.Output<List<KxDataviewSegmentConfiguration>>? segmentConfigurations,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoUpdate = pulumi.Input.asOptionalInput<bool>(autoUpdate),
      availabilityZoneId = pulumi.Input.asOptionalInput<String>(availabilityZoneId),
      azMode = pulumi.Input.asOptionalInput<String>(azMode),
      changesetId = pulumi.Input.asOptionalInput<String>(changesetId),
      createdTimestamp = pulumi.Input.asOptionalInput<String>(createdTimestamp),
      databaseName = pulumi.Input.asOptionalInput<String>(databaseName),
      description = pulumi.Input.asOptionalInput<String>(description),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      lastModifiedTimestamp = pulumi.Input.asOptionalInput<String>(lastModifiedTimestamp),
      name = pulumi.Input.asOptionalInput<String>(name),
      readWrite = pulumi.Input.asOptionalInput<bool>(readWrite),
      region = pulumi.Input.asOptionalInput<String>(region),
      segmentConfigurations = pulumi.Input.asOptionalInput<List<KxDataviewSegmentConfiguration>>(segmentConfigurations),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'autoUpdate': ?autoUpdate,
      'availabilityZoneId': ?availabilityZoneId,
      'azMode': ?azMode,
      'changesetId': ?changesetId,
      'createdTimestamp': ?createdTimestamp,
      'databaseName': ?databaseName,
      'description': ?description,
      'environmentId': ?environmentId,
      'lastModifiedTimestamp': ?lastModifiedTimestamp,
      'name': ?name,
      'readWrite': ?readWrite,
      'region': ?region,
      'segmentConfigurations': ?pulumi.Input.mapOptionalInputValue<List<KxDataviewSegmentConfiguration>, List<Map<String, dynamic>>>(segmentConfigurations, (value) => pulumi.Input.encodeList<KxDataviewSegmentConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory KxDataviewState.fromMap(Map<String, dynamic> map) {
    return KxDataviewState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoUpdate: map['autoUpdate'] == null ? null : pulumi.Output.create<bool>(map['autoUpdate'] as bool),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : pulumi.Output.create<String>(map['availabilityZoneId'] as String),
      azMode: map['azMode'] == null ? null : pulumi.Output.create<String>(map['azMode'] as String),
      changesetId: map['changesetId'] == null ? null : pulumi.Output.create<String>(map['changesetId'] as String),
      createdTimestamp: map['createdTimestamp'] == null ? null : pulumi.Output.create<String>(map['createdTimestamp'] as String),
      databaseName: map['databaseName'] == null ? null : pulumi.Output.create<String>(map['databaseName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      lastModifiedTimestamp: map['lastModifiedTimestamp'] == null ? null : pulumi.Output.create<String>(map['lastModifiedTimestamp'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      readWrite: map['readWrite'] == null ? null : pulumi.Output.create<bool>(map['readWrite'] as bool),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      segmentConfigurations: map['segmentConfigurations'] == null ? null : pulumi.Output.create<List<KxDataviewSegmentConfiguration>>(pulumi.Input.decodeList<KxDataviewSegmentConfiguration>(map['segmentConfigurations'], (value) => KxDataviewSegmentConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

