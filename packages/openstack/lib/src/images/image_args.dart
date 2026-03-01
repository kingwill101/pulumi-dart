// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_images_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_images_image_image_args_doc}
class ImageArgs {
  /// The container format. Must be one of "bare",
  /// "ovf", "aki", "ari", "ami", "ova", "docker", "compressed".
  final pulumi.Input<String> containerFormat;
  /// If true, this provider will decompress downloaded
  /// image before uploading it to OpenStack. Decompression algorithm is chosen by
  /// checking "Content-Type" or `Content-Disposition` header to detect the
  /// filename extension. Supported algorithms are: gzip, bzip2, xz and zst.
  /// Defaults to false. Changing this creates a new Image.
  final pulumi.Input<bool>? decompress;
  /// The disk format. Must be one of "raw", "vhd",
  /// "vhdx", "vmdk", "vdi", "iso", "ploop", "qcow2", "aki", "ari", "ami"
  final pulumi.Input<String> diskFormat;
  /// If true, image will be hidden from public list.
  /// Defaults to false.
  final pulumi.Input<bool>? hidden;
  final pulumi.Input<String>? imageCachePath;
  /// Unique ID (valid UUID) of image to create. Changing
  /// this creates a new image.
  final pulumi.Input<String>? imageId;
  /// The password of basic auth to download
  /// `image_source_url`.
  final pulumi.Input<String>? imageSourcePassword;
  /// This is the url of the raw image. If
  /// `web_download` is not used, then the image will be downloaded in the
  /// `image_cache_path` before being uploaded to Glance. Conflicts with
  /// `local_file_path`.
  final pulumi.Input<String>? imageSourceUrl;
  /// The username of basic auth to download
  /// `image_source_url`.
  final pulumi.Input<String>? imageSourceUsername;
  /// This is the filepath of the raw image file
  /// that will be uploaded to Glance. Conflicts with `image_source_url` and
  /// `web_download`.
  final pulumi.Input<String>? localFilePath;
  /// Amount of disk space (in GB) required to boot
  /// image. Defaults to 0.
  final pulumi.Input<int>? minDiskGb;
  /// Amount of ram (in MB) required to boot image.
  /// Defauts to 0.
  final pulumi.Input<int>? minRamMb;
  /// The name of the image.
  final pulumi.Input<String>? name;
  /// A map of key/value pairs to set freeform
  /// information about an image. See the "Notes" section for further information
  /// about properties.
  final pulumi.Input<Map<String, String>>? properties;
  /// If true, image will not be deletable. Defaults to
  /// false.
  final pulumi.Input<bool>? protected;
  /// The region in which to obtain the V2 Glance client. A
  /// Glance client is needed to create an Image that can be used with a compute
  /// instance. If omitted, the `region` argument of the provider is used. Changing
  /// this creates a new Image.
  final pulumi.Input<String>? region;
  /// The tags of the image. It must be a list of strings. At
  /// this time, it is not possible to delete all tags of an image.
  final pulumi.Input<List<String>>? tags;
  /// If false, the checksum will not be verified
  /// once the image is finished uploading. Conflicts with `web_download`. Defaults
  /// to true when not using `web_download`.
  final pulumi.Input<bool>? verifyChecksum;
  /// The visibility of the image. Must be one of
  /// "public", "private", "community", or "shared". The ability to set the
  /// visibility depends upon the configuration of the OpenStack cloud.
  final pulumi.Input<String>? visibility;
  /// If true, the "web-download" import method will be
  /// used to let Openstack download the image directly from the remote source.
  /// Conflicts with `local_file_path`. Defaults to false.
  final pulumi.Input<bool>? webDownload;

  /// Creates a new [ImageArgs].
  /// [containerFormat] The container format. Must be one of "bare",
  /// [decompress] If true, this provider will decompress downloaded
  /// [diskFormat] The disk format. Must be one of "raw", "vhd",
  /// [hidden] If true, image will be hidden from public list.
  /// [imageCachePath] Optional.
  /// [imageId] Unique ID (valid UUID) of image to create. Changing
  /// [imageSourcePassword] The password of basic auth to download
  /// [imageSourceUrl] This is the url of the raw image. If
  /// [imageSourceUsername] The username of basic auth to download
  /// [localFilePath] This is the filepath of the raw image file
  /// [minDiskGb] Amount of disk space (in GB) required to boot
  /// [minRamMb] Amount of ram (in MB) required to boot image.
  /// [name] The name of the image.
  /// [properties] A map of key/value pairs to set freeform
  /// [protected] If true, image will not be deletable. Defaults to
  /// [region] The region in which to obtain the V2 Glance client. A
  /// [tags] The tags of the image. It must be a list of strings. At
  /// [verifyChecksum] If false, the checksum will not be verified
  /// [visibility] The visibility of the image. Must be one of
  /// [webDownload] If true, the "web-download" import method will be
  ImageArgs({
    required String containerFormat,
    bool? decompress,
    required String diskFormat,
    bool? hidden,
    String? imageCachePath,
    String? imageId,
    String? imageSourcePassword,
    String? imageSourceUrl,
    String? imageSourceUsername,
    String? localFilePath,
    int? minDiskGb,
    int? minRamMb,
    String? name,
    Map<String, String>? properties,
    bool? protected,
    String? region,
    List<String>? tags,
    bool? verifyChecksum,
    String? visibility,
    bool? webDownload,
  }) :
      containerFormat = pulumi.Input.asInput<String>(containerFormat),
      decompress = pulumi.Input.asOptionalInput<bool>(decompress),
      diskFormat = pulumi.Input.asInput<String>(diskFormat),
      hidden = pulumi.Input.asOptionalInput<bool>(hidden),
      imageCachePath = pulumi.Input.asOptionalInput<String>(imageCachePath),
      imageId = pulumi.Input.asOptionalInput<String>(imageId),
      imageSourcePassword = pulumi.Input.asOptionalInput<String>(imageSourcePassword),
      imageSourceUrl = pulumi.Input.asOptionalInput<String>(imageSourceUrl),
      imageSourceUsername = pulumi.Input.asOptionalInput<String>(imageSourceUsername),
      localFilePath = pulumi.Input.asOptionalInput<String>(localFilePath),
      minDiskGb = pulumi.Input.asOptionalInput<int>(minDiskGb),
      minRamMb = pulumi.Input.asOptionalInput<int>(minRamMb),
      name = pulumi.Input.asOptionalInput<String>(name),
      properties = pulumi.Input.asOptionalInput<Map<String, String>>(properties),
      protected = pulumi.Input.asOptionalInput<bool>(protected),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      verifyChecksum = pulumi.Input.asOptionalInput<bool>(verifyChecksum),
      visibility = pulumi.Input.asOptionalInput<String>(visibility),
      webDownload = pulumi.Input.asOptionalInput<bool>(webDownload);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerFormat': containerFormat,
      'decompress': ?decompress,
      'diskFormat': diskFormat,
      'hidden': ?hidden,
      'imageCachePath': ?imageCachePath,
      'imageId': ?imageId,
      'imageSourcePassword': ?imageSourcePassword,
      'imageSourceUrl': ?imageSourceUrl,
      'imageSourceUsername': ?imageSourceUsername,
      'localFilePath': ?localFilePath,
      'minDiskGb': ?minDiskGb,
      'minRamMb': ?minRamMb,
      'name': ?name,
      'properties': ?properties,
      'protected': ?protected,
      'region': ?region,
      'tags': ?tags,
      'verifyChecksum': ?verifyChecksum,
      'visibility': ?visibility,
      'webDownload': ?webDownload,
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      containerFormat: map['containerFormat'] as String,
      decompress: map['decompress'] == null ? null : map['decompress'] as bool,
      diskFormat: map['diskFormat'] as String,
      hidden: map['hidden'] == null ? null : map['hidden'] as bool,
      imageCachePath: map['imageCachePath'] == null ? null : map['imageCachePath'] as String,
      imageId: map['imageId'] == null ? null : map['imageId'] as String,
      imageSourcePassword: map['imageSourcePassword'] == null ? null : map['imageSourcePassword'] as String,
      imageSourceUrl: map['imageSourceUrl'] == null ? null : map['imageSourceUrl'] as String,
      imageSourceUsername: map['imageSourceUsername'] == null ? null : map['imageSourceUsername'] as String,
      localFilePath: map['localFilePath'] == null ? null : map['localFilePath'] as String,
      minDiskGb: map['minDiskGb'] == null ? null : map['minDiskGb'] as int,
      minRamMb: map['minRamMb'] == null ? null : map['minRamMb'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      protected: map['protected'] == null ? null : map['protected'] as bool,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      verifyChecksum: map['verifyChecksum'] == null ? null : map['verifyChecksum'] as bool,
      visibility: map['visibility'] == null ? null : map['visibility'] as String,
      webDownload: map['webDownload'] == null ? null : map['webDownload'] as bool,
    );
  }
}

