// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UsageExportBucket.
class UsageExportBucketArgs {
  /// The bucket to store reports in.
  ///
  /// - - -
  final Input<String> bucketName;

  /// A prefix for the reports, for instance, the project name.
  final Input<String>? prefix;

  /// The project to set the export bucket on. If it is not provided, the provider project is used.
  final Input<String>? project;

  UsageExportBucketArgs({
    required this.bucketName,
    this.prefix,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketName'] = bucketName;
    final prefixValue = prefix;
    if (prefixValue != null) {
      map['prefix'] = prefixValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory UsageExportBucketArgs.fromMap(Map<String, dynamic> map) {
    return UsageExportBucketArgs(
      bucketName: Input.asInput<String>(map['bucketName']),
      prefix: Input.asOptionalInput<String>(map['prefix']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
