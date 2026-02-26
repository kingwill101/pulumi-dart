// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for LogStream.
class LogStreamArgs {
  /// The name of the log group under which the log stream is to be created.
  final Input<String> logGroupName;

  /// The name of the log stream. Must not be longer than 512 characters and must not contain `:`
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  LogStreamArgs({
    required this.logGroupName,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroupName'] = logGroupName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory LogStreamArgs.fromMap(Map<String, dynamic> map) {
    return LogStreamArgs(
      logGroupName: Input.asInput<String>(map['logGroupName']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
