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
    this.arn,
    this.autoUpdate,
    this.availabilityZoneId,
    this.azMode,
    this.changesetId,
    this.createdTimestamp,
    this.databaseName,
    this.description,
    this.environmentId,
    this.lastModifiedTimestamp,
    this.name,
    this.readWrite,
    this.region,
    this.segmentConfigurations,
    this.status,
    this.tags,
    this.tagsAll,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      autoUpdate: map['autoUpdate'] == null ? null : ((map['autoUpdate'] as bool).input()).input(),
      availabilityZoneId: map['availabilityZoneId'] == null ? null : ((map['availabilityZoneId'] as String).input()).input(),
      azMode: map['azMode'] == null ? null : ((map['azMode'] as String).input()).input(),
      changesetId: map['changesetId'] == null ? null : ((map['changesetId'] as String).input()).input(),
      createdTimestamp: map['createdTimestamp'] == null ? null : ((map['createdTimestamp'] as String).input()).input(),
      databaseName: map['databaseName'] == null ? null : ((map['databaseName'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      environmentId: map['environmentId'] == null ? null : ((map['environmentId'] as String).input()).input(),
      lastModifiedTimestamp: map['lastModifiedTimestamp'] == null ? null : ((map['lastModifiedTimestamp'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      readWrite: map['readWrite'] == null ? null : ((map['readWrite'] as bool).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      segmentConfigurations: map['segmentConfigurations'] == null ? null : ((pulumi.Input.decodeList<KxDataviewSegmentConfiguration>(map['segmentConfigurations']!, (value) => KxDataviewSegmentConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

