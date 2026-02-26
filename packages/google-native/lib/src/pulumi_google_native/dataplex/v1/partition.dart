import 'package:pulumi/pulumi.dart';
import 'partition_args.dart';

/// Create a metadata partition.
/// Auto-naming is currently not supported for this resource.
class Partition extends CustomResource {
  late final Output<String> entityId;

  /// Optional. The etag for this partition.
  late final Output<String> etag;
  late final Output<String> lakeId;
  late final Output<String> location;

  /// Partition values used in the HTTP URL must be double encoded. For example, url_encode(url_encode(value)) can be used to encode "US:CA/CA#Sunnyvale so that the request URL ends with "/partitions/US%253ACA/CA%2523Sunnyvale". The name field in the response retains the encoded format.
  late final Output<String> name;
  late final Output<String> project;

  /// Immutable. The set of values representing the partition, which correspond to the partition schema defined in the parent entity.
  late final Output<List<String>> values;
  late final Output<String> zone;

  Partition(
    String name, {
    PartitionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dataplex/v1:Partition',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.entityId = registerOutput<String>('entityId');
    this.etag = registerOutput<String>('etag');
    this.lakeId = registerOutput<String>('lakeId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.values = registerOutput<List<String>>('values');
    this.zone = registerOutput<String>('zone');
  }
}
