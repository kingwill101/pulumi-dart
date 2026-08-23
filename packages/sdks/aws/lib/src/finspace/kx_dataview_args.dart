// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_dataview_segment_configuration.dart';

/// {@template pulumi_finspace_kx_dataview_kx_dataview_args_doc}
/// The set of arguments for KxDataview.
/// {@endtemplate}
/// {@macro pulumi_finspace_kx_dataview_kx_dataview_args_doc}
class KxDataviewArgs {
  /// Whether to apply all the future additions and corrections automatically to the dataview when you ingest new changesets. Defaults to `false`.
  final pulumi.Input<bool> autoUpdate;
  /// Identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  final pulumi.Input<String>? availabilityZoneId;
  /// Number of availability zones you want to assign per cluster. Valid values are `SINGLE` (assigns one availability zone per cluster) and `MULTI` (assigns all the availability zones per cluster).
  final pulumi.Input<String> azMode;
  /// Unique identifier of the changeset of the database that you want to use to ingest data.
  final pulumi.Input<String>? changesetId;
  /// Name of the database where you want to create a dataview.
  final pulumi.Input<String> databaseName;
  /// Description for the dataview.
  final pulumi.Input<String>? description;
  /// Unique identifier for the KX environment.
  final pulumi.Input<String> environmentId;
  /// Unique identifier for the dataview.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Whether to make the dataview writable to perform database maintenance. You cannot create partial writable dataviews; you must provide the entire database path and cannot perform updates, so `autoUpdate` must be `false` when `readWrite` is `true`. You must also use a unique volume, and once a dataview is writable you cannot change it to read-only.
  final pulumi.Input<bool>? readWrite;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See `segmentConfigurations` below.
  final pulumi.Input<List<KxDataviewSegmentConfiguration>>? segmentConfigurations;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [KxDataviewArgs].
  /// [autoUpdate] Whether to apply all the future additions and corrections automatically to the dataview when you ingest new changesets. Defaults to `false`.
  /// [availabilityZoneId] Identifier of the availability zones. If attaching a volume, the volume must be in the same availability zone as the dataview that you are attaching to.
  /// [azMode] Number of availability zones you want to assign per cluster. Valid values are `SINGLE` (assigns one availability zone per cluster) and `MULTI` (assigns all the availability zones per cluster).
  /// [changesetId] Unique identifier of the changeset of the database that you want to use to ingest data.
  /// [databaseName] Name of the database where you want to create a dataview.
  /// [description] Description for the dataview.
  /// [environmentId] Unique identifier for the KX environment.
  /// [name] Unique identifier for the dataview.
  /// [readWrite] Whether to make the dataview writable to perform database maintenance. You cannot create partial writable dataviews; you must provide the entire database path and cannot perform updates, so `autoUpdate` must be `false` when `readWrite` is `true`. You must also use a unique volume, and once a dataview is writable you cannot change it to read-only.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [segmentConfigurations] Configuration that contains the database path of the data that you want to place on each selected volume. Each segment must have a unique database path for each volume. If you do not explicitly specify any database path for a volume, they are accessible from the cluster through the default S3/object store segment. See `segmentConfigurations` below.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const KxDataviewArgs({
    required this.autoUpdate,
    this.availabilityZoneId,
    required this.azMode,
    this.changesetId,
    required this.databaseName,
    this.description,
    required this.environmentId,
    this.name,
    this.readWrite,
    this.region,
    this.segmentConfigurations,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpdate': autoUpdate,
      'availabilityZoneId': ?availabilityZoneId,
      'azMode': azMode,
      'changesetId': ?changesetId,
      'databaseName': databaseName,
      'description': ?description,
      'environmentId': environmentId,
      'name': ?name,
      'readWrite': ?readWrite,
      'region': ?region,
      'segmentConfigurations': ?pulumi.Input.mapOptionalInputValue<List<KxDataviewSegmentConfiguration>, List<Map<String, dynamic>>>(segmentConfigurations, (value) => pulumi.Input.encodeList<KxDataviewSegmentConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory KxDataviewArgs.fromMap(Map<String, dynamic> map) {
    return KxDataviewArgs(
      autoUpdate: pulumi.Input.fromValue(map['autoUpdate'] as bool),
      availabilityZoneId: (() { final guardedValue = map['availabilityZoneId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azMode: pulumi.Input.fromValue(map['azMode'] as String),
      changesetId: (() { final guardedValue = map['changesetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readWrite: (() { final guardedValue = map['readWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentConfigurations: (() { final guardedValue = map['segmentConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KxDataviewSegmentConfiguration>(guardedValue, (value) => KxDataviewSegmentConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
