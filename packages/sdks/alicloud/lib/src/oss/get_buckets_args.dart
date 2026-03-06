// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oss_get_buckets_get_buckets_args_doc}
/// Arguments for getBuckets.
/// {@endtemplate}
/// {@macro pulumi_oss_get_buckets_get_buckets_args_doc}
class GetBucketsArgs {
  /// A regex string to filter results by bucket name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetBucketsArgs].
  /// [nameRegex] A regex string to filter results by bucket name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  const GetBucketsArgs({
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetBucketsArgs.fromMap(Map<String, dynamic> map) {
    return GetBucketsArgs(
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

