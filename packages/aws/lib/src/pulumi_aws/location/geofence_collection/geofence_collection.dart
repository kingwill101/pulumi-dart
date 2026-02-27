import 'package:pulumi/pulumi.dart' as pulumi;
import 'geofence_collection_args.dart';

/// Resource for managing an AWS Location Geofence Collection.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Location Geofence Collection using the `collection_name`. For example:
///
/// ```sh
/// $ pulumi import aws:location/geofenceCollection:GeofenceCollection example example
/// ```
class GeofenceCollection extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) for the geofence collection resource. Used when you need to specify a resource across all AWS.
  late final pulumi.Output<String> collectionArn;

  /// The name of the geofence collection.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> collectionName;

  /// The timestamp for when the geofence collection resource was created in ISO 8601 format.
  late final pulumi.Output<String> createTime;

  /// The optional description for the geofence collection.
  late final pulumi.Output<String?> description;

  /// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  late final pulumi.Output<String?> kmsKeyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value tags for the geofence collection. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The timestamp for when the geofence collection resource was last updated in ISO 8601 format.
  late final pulumi.Output<String> updateTime;

  GeofenceCollection(
    String name, {
    GeofenceCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:location/geofenceCollection:GeofenceCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.collectionArn = registerOutput<String>('collectionArn');
    this.collectionName = registerOutput<String>('collectionName');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
