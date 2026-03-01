// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mns_topic_topic_args_doc}
/// The set of arguments for Topic.
/// {@endtemplate}
/// {@macro pulumi_mns_topic_topic_args_doc}
class TopicArgs {
  /// Is logging enabled? true or false. Default value to false.
  final pulumi.Input<bool>? loggingEnabled;
  /// This indicates the maximum length, in bytes, of any message body sent to the topic. Valid value range: 1024-65536, i.e., 1K to 64K. Default value to 65536.
  final pulumi.Input<int>? maximumMessageSize;
  /// Two topics on a single account in the same region cannot have the same name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  final pulumi.Input<String>? name;

  /// Creates a new [TopicArgs].
  /// [loggingEnabled] Is logging enabled? true or false. Default value to false.
  /// [maximumMessageSize] This indicates the maximum length, in bytes, of any message body sent to the topic. Valid value range: 1024-65536, i.e., 1K to 64K. Default value to 65536.
  /// [name] Two topics on a single account in the same region cannot have the same name. A topic name must start with an English letter or a digit, and can contain English letters, digits, and hyphens, with the length not exceeding 256 characters.
  TopicArgs({
    bool? loggingEnabled,
    int? maximumMessageSize,
    String? name,
  }) :
      loggingEnabled = pulumi.Input.asOptionalInput<bool>(loggingEnabled),
      maximumMessageSize = pulumi.Input.asOptionalInput<int>(maximumMessageSize),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loggingEnabled': ?loggingEnabled,
      'maximumMessageSize': ?maximumMessageSize,
      'name': ?name,
    };
  }

  factory TopicArgs.fromMap(Map<String, dynamic> map) {
    return TopicArgs(
      loggingEnabled: map['loggingEnabled'] == null ? null : map['loggingEnabled'] as bool,
      maximumMessageSize: map['maximumMessageSize'] == null ? null : map['maximumMessageSize'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

