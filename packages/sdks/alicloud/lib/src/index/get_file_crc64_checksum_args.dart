// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_file_crc64_checksum_get_file_crc64_checksum_args_doc}
/// Arguments for getFileCrc64Checksum.
/// {@endtemplate}
/// {@macro pulumi_index_get_file_crc64_checksum_get_file_crc64_checksum_args_doc}
class GetFileCrc64ChecksumArgs {
  /// The name of the file to be computed crc64 checksum.
  final pulumi.Input<String> filename;
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetFileCrc64ChecksumArgs].
  /// [filename] The name of the file to be computed crc64 checksum.
  /// [outputFile] Optional.
  GetFileCrc64ChecksumArgs({
    required pulumi.Output<String> filename,
    pulumi.Output<String>? outputFile,
  }) :
      filename = pulumi.Input.asInput<String>(filename),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filename': filename,
      'outputFile': ?outputFile,
    };
  }

  factory GetFileCrc64ChecksumArgs.fromMap(Map<String, dynamic> map) {
    return GetFileCrc64ChecksumArgs(
      filename: pulumi.Output.create<String>(map['filename'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

