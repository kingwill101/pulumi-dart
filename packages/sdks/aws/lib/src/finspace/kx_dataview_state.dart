// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_dataview_segment_configuration.dart';

/// Input properties used for looking up and filtering KxDataview resources.
class KxDataviewState {
  /// ARN identifier of the KX dataview.
  final pulumi.Input<String?>? arn;
  /// Whether to apply all the future additions and corrections automatically to the dataview when you ingest new changesets. Defaults to `false`.
  final pulumi.Input<bool?>? autoUpdate;
  /// Identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  final pulumi.Input<String?>? availabilityZoneId;
  /// Number of availability zones you want to assign per cluster. Valid values are `SINGLE` (assigns one availability zone per cluster) and `MULTI` (assigns all the availability zones per cluster).
  final pulumi.Input<String?>? azMode;
  /// Unique identifier of the changeset of the database that you want to use to ingest data.
  final pulumi.Input<String?>? changesetId;
  /// Timestamp at which the dataview was created in FinSpace. Value determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  final pulumi.Input<String?>? createdTimestamp;
  /// Name of the database where you want to create a dataview.
  final pulumi.Input<String?>? databaseName;
  /// Description for the dataview.
  final pulumi.Input<String?>? description;
  /// Unique identifier for the KX environment.
  final pulumi.Input<String?>? environmentId;
  /// Last time that the dataview was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  final pulumi.Input<String?>? lastModifiedTimestamp;
  /// Unique identifier for the dataview.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? name;
  /// Whether to make the dataview writable to perform database maintenance. You cannot create partial writable dataviews; you must provide the entire database path and cannot perform updates, so `autoUpdate` must be `false` when `readWrite` is `true`. You must also use a unique volume, and once a dataview is writable you cannot change it to read-only.
  final pulumi.Input<bool?>? readWrite;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See `segmentConfigurations` below.
  final pulumi.Input<List<KxDataviewSegmentConfiguration>?>? segmentConfigurations;
  /// Status of the dataview.
  final pulumi.Input<String?>? status;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [KxDataviewState].
  /// [arn] ARN identifier of the KX dataview.
  /// [autoUpdate] Whether to apply all the future additions and corrections automatically to the dataview when you ingest new changesets. Defaults to `false`.
  /// [availabilityZoneId] Identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  /// [azMode] Number of availability zones you want to assign per cluster. Valid values are `SINGLE` (assigns one availability zone per cluster) and `MULTI` (assigns all the availability zones per cluster).
  /// [changesetId] Unique identifier of the changeset of the database that you want to use to ingest data.
  /// [createdTimestamp] Timestamp at which the dataview was created in FinSpace. Value determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  /// [databaseName] Name of the database where you want to create a dataview.
  /// [description] Description for the dataview.
  /// [environmentId] Unique identifier for the KX environment.
  /// [lastModifiedTimestamp] Last time that the dataview was updated in FinSpace. The value is determined as epoch time in milliseconds. For example, the value for Monday, November 1, 2021 12:00:00 PM UTC is specified as 1635768000000.
  /// [name] Unique identifier for the dataview.
  /// [readWrite] Whether to make the dataview writable to perform database maintenance. You cannot create partial writable dataviews; you must provide the entire database path and cannot perform updates, so `autoUpdate` must be `false` when `readWrite` is `true`. You must also use a unique volume, and once a dataview is writable you cannot change it to read-only.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [segmentConfigurations] Configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See `segmentConfigurations` below.
  /// [status] Status of the dataview.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const KxDataviewState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoUpdate: (() { final guardedValue = map['autoUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azMode: (() { final guardedValue = map['azMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      changesetId: (() { final guardedValue = map['changesetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTimestamp: (() { final guardedValue = map['createdTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: (() { final guardedValue = map['databaseName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedTimestamp: (() { final guardedValue = map['lastModifiedTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readWrite: (() { final guardedValue = map['readWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentConfigurations: (() { final guardedValue = map['segmentConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KxDataviewSegmentConfiguration>(guardedValue, (value) => KxDataviewSegmentConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
