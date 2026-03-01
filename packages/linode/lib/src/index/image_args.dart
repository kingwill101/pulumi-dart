// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_timeouts.dart';

/// {@template pulumi_index_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_index_image_image_args_doc}
class ImageArgs {
  /// Whether this image supports cloud-init.
  final pulumi.Input<bool>? cloudInit;
  /// A detailed description of this Image.
  final pulumi.Input<String>? description;
  /// The ID of the Linode Disk that this Image will be created from.
  final pulumi.Input<int>? diskId;
  /// The MD5 hash of the file to be uploaded. This is used to trigger file updates.
  final pulumi.Input<String>? fileHash;
  /// The path of the image file to be uploaded.
  final pulumi.Input<String>? filePath;
  /// A short description of the Image. Labels cannot contain special characters.
  final pulumi.Input<String> label;
  /// The ID of the Linode that this Image will be created from.
  ///
  /// - - -
  ///
  /// > **NOTICE:** Uploading images is currently in beta. Ensure `LINODE_API_VERSION` is set to `v4beta` in order to use this functionality.
  final pulumi.Input<int>? linodeId;
  /// The region of the image. See all regions [here](https://techdocs.akamai.com/linode-api/reference/get-regions).
  final pulumi.Input<String>? region;
  /// A list of regions that customer wants to replicate this image in. At least one valid region is required and only core regions allowed. Existing images in the regions not passed will be removed. See Replicate an Image [here](https://techdocs.akamai.com/linode-api/reference/post-replicate-image) for more details.
  final pulumi.Input<List<String>>? replicaRegions;
  /// A list of customized tags.
  final pulumi.Input<List<String>>? tags;
  final pulumi.Input<ImageTimeouts>? timeouts;
  /// Whether to wait for all image replications become `available`. Default to false.
  ///
  /// - - -
  final pulumi.Input<bool>? waitForReplications;

  /// Creates a new [ImageArgs].
  /// [cloudInit] Whether this image supports cloud-init.
  /// [description] A detailed description of this Image.
  /// [diskId] The ID of the Linode Disk that this Image will be created from.
  /// [fileHash] The MD5 hash of the file to be uploaded. This is used to trigger file updates.
  /// [filePath] The path of the image file to be uploaded.
  /// [label] A short description of the Image. Labels cannot contain special characters.
  /// [linodeId] The ID of the Linode that this Image will be created from.
  /// [region] The region of the image. See all regions [here](https://techdocs.akamai.com/linode-api/reference/get-regions).
  /// [replicaRegions] A list of regions that customer wants to replicate this image in. At least one valid region is required and only core regions allowed. Existing images in the regions not passed will be removed. See Replicate an Image [here](https://techdocs.akamai.com/linode-api/reference/post-replicate-image) for more details.
  /// [tags] A list of customized tags.
  /// [timeouts] Optional.
  /// [waitForReplications] Whether to wait for all image replications become `available`. Default to false.
  ImageArgs({
    bool? cloudInit,
    String? description,
    int? diskId,
    String? fileHash,
    String? filePath,
    required String label,
    int? linodeId,
    String? region,
    List<String>? replicaRegions,
    List<String>? tags,
    ImageTimeouts? timeouts,
    bool? waitForReplications,
  }) :
      cloudInit = pulumi.Input.asOptionalInput<bool>(cloudInit),
      description = pulumi.Input.asOptionalInput<String>(description),
      diskId = pulumi.Input.asOptionalInput<int>(diskId),
      fileHash = pulumi.Input.asOptionalInput<String>(fileHash),
      filePath = pulumi.Input.asOptionalInput<String>(filePath),
      label = pulumi.Input.asInput<String>(label),
      linodeId = pulumi.Input.asOptionalInput<int>(linodeId),
      region = pulumi.Input.asOptionalInput<String>(region),
      replicaRegions = pulumi.Input.asOptionalInput<List<String>>(replicaRegions),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      timeouts = pulumi.Input.asOptionalInput<ImageTimeouts>(timeouts),
      waitForReplications = pulumi.Input.asOptionalInput<bool>(waitForReplications);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudInit': ?cloudInit,
      'description': ?description,
      'diskId': ?diskId,
      'fileHash': ?fileHash,
      'filePath': ?filePath,
      'label': label,
      'linodeId': ?linodeId,
      'region': ?region,
      'replicaRegions': ?replicaRegions,
      'tags': ?tags,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ImageTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'waitForReplications': ?waitForReplications,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      cloudInit: map['cloudInit'] == null ? null : map['cloudInit'] as bool,
      description: map['description'] == null ? null : map['description'] as String,
      diskId: map['diskId'] == null ? null : map['diskId'] as int,
      fileHash: map['fileHash'] == null ? null : map['fileHash'] as String,
      filePath: map['filePath'] == null ? null : map['filePath'] as String,
      label: map['label'] as String,
      linodeId: map['linodeId'] == null ? null : map['linodeId'] as int,
      region: map['region'] == null ? null : map['region'] as String,
      replicaRegions: map['replicaRegions'] == null ? null : (map['replicaRegions'] as List).cast<String>(),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      timeouts: map['timeouts'] == null ? null : ImageTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
      waitForReplications: map['waitForReplications'] == null ? null : map['waitForReplications'] as bool,
    );
  }
}

