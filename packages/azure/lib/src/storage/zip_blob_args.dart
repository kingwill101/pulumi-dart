// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_zip_blob_zip_blob_args_doc}
/// The set of arguments for ZipBlob.
/// {@endtemplate}
/// {@macro pulumi_storage_zip_blob_zip_blob_args_doc}
class ZipBlobArgs {
  final pulumi.Input<String>? accessTier;
  final pulumi.Input<String>? cacheControl;
  final pulumi.Input<dynamic>? content;
  final pulumi.Input<String>? contentMd5;
  final pulumi.Input<String>? contentType;
  final pulumi.Input<String>? encryptionScope;
  final pulumi.Input<Map<String, String>>? metadata;
  final pulumi.Input<String>? name;
  final pulumi.Input<int>? parallelism;
  final pulumi.Input<int>? size;
  final pulumi.Input<String>? sourceContent;
  final pulumi.Input<String>? sourceUri;
  final pulumi.Input<String> storageAccountName;
  final pulumi.Input<String> storageContainerName;
  final pulumi.Input<String> type;

  /// Creates a new [ZipBlobArgs].
  /// [accessTier] Optional.
  /// [cacheControl] Optional.
  /// [content] Optional.
  /// [contentMd5] Optional.
  /// [contentType] Optional.
  /// [encryptionScope] Optional.
  /// [metadata] Optional.
  /// [name] Optional.
  /// [parallelism] Optional.
  /// [size] Optional.
  /// [sourceContent] Optional.
  /// [sourceUri] Optional.
  /// [storageAccountName] Required.
  /// [storageContainerName] Required.
  /// [type] Required.
  ZipBlobArgs({
    String? accessTier,
    String? cacheControl,
    dynamic content,
    String? contentMd5,
    String? contentType,
    String? encryptionScope,
    Map<String, String>? metadata,
    String? name,
    int? parallelism,
    int? size,
    String? sourceContent,
    String? sourceUri,
    required String storageAccountName,
    required String storageContainerName,
    required String type,
  }) :
      accessTier = pulumi.Input.asOptionalInput<String>(accessTier),
      cacheControl = pulumi.Input.asOptionalInput<String>(cacheControl),
      content = pulumi.Input.asOptionalInput<dynamic>(content),
      contentMd5 = pulumi.Input.asOptionalInput<String>(contentMd5),
      contentType = pulumi.Input.asOptionalInput<String>(contentType),
      encryptionScope = pulumi.Input.asOptionalInput<String>(encryptionScope),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      parallelism = pulumi.Input.asOptionalInput<int>(parallelism),
      size = pulumi.Input.asOptionalInput<int>(size),
      sourceContent = pulumi.Input.asOptionalInput<String>(sourceContent),
      sourceUri = pulumi.Input.asOptionalInput<String>(sourceUri),
      storageAccountName = pulumi.Input.asInput<String>(storageAccountName),
      storageContainerName = pulumi.Input.asInput<String>(storageContainerName),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTier': ?accessTier,
      'cacheControl': ?cacheControl,
      'content': ?content,
      'contentMd5': ?contentMd5,
      'contentType': ?contentType,
      'encryptionScope': ?encryptionScope,
      'metadata': ?metadata,
      'name': ?name,
      'parallelism': ?parallelism,
      'size': ?size,
      'sourceContent': ?sourceContent,
      'sourceUri': ?sourceUri,
      'storageAccountName': storageAccountName,
      'storageContainerName': storageContainerName,
      'type': type,
    };
  }

  factory ZipBlobArgs.fromMap(Map<String, dynamic> map) {
    return ZipBlobArgs(
      accessTier: map['accessTier'] == null ? null : map['accessTier'] as String,
      cacheControl: map['cacheControl'] == null ? null : map['cacheControl'] as String,
      content: map['content'] == null ? null : map['content'],
      contentMd5: map['contentMd5'] == null ? null : map['contentMd5'] as String,
      contentType: map['contentType'] == null ? null : map['contentType'] as String,
      encryptionScope: map['encryptionScope'] == null ? null : map['encryptionScope'] as String,
      metadata: map['metadata'] == null ? null : (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      parallelism: map['parallelism'] == null ? null : map['parallelism'] as int,
      size: map['size'] == null ? null : map['size'] as int,
      sourceContent: map['sourceContent'] == null ? null : map['sourceContent'] as String,
      sourceUri: map['sourceUri'] == null ? null : map['sourceUri'] as String,
      storageAccountName: map['storageAccountName'] as String,
      storageContainerName: map['storageContainerName'] as String,
      type: map['type'] as String,
    );
  }
}

