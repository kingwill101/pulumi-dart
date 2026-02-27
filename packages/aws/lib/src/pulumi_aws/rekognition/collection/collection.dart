import 'package:pulumi/pulumi.dart';
import '../collection_timeouts/collection_timeouts.dart';
import 'collection_args.dart';

/// Resource for managing an AWS Rekognition Collection.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Rekognition Collection using the `collection_id`. For example:
///
/// ```sh
/// $ pulumi import aws:rekognition/collection:Collection example collection-id-12345678
/// ```
class Collection extends CustomResource {
  /// ARN of the Collection.
  late final Output<String> arn;

  /// The name of the collection
  ///
  /// The following arguments are optional:
  late final Output<String> collectionId;

  /// The Face Model Version that the collection was initialized with
  late final Output<String> faceModelVersion;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags assigned to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<CollectionTimeouts?> timeouts;

  Collection(
    String name, {
    CollectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:rekognition/collection:Collection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.collectionId = registerOutput<String>('collectionId');
    this.faceModelVersion = registerOutput<String>('faceModelVersion');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<CollectionTimeouts?>('timeouts');
  }
}
