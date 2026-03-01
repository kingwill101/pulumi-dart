// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_message_get_service_topics_get_service_topics_args_doc}
/// Arguments for getServiceTopics.
/// {@endtemplate}
/// {@macro pulumi_message_get_service_topics_get_service_topics_args_doc}
class GetServiceTopicsArgs {
  /// A list of Topic IDs. Its element value is same as Topic Name.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Topic name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The name of the topic.
  final pulumi.Input<String>? topicName;

  /// Creates a new [GetServiceTopicsArgs].
  /// [ids] A list of Topic IDs. Its element value is same as Topic Name.
  /// [nameRegex] A regex string to filter results by Topic name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [topicName] The name of the topic.
  GetServiceTopicsArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? pageNumber,
    pulumi.Output<int>? pageSize,
    pulumi.Output<String>? topicName,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      topicName = pulumi.Input.asOptionalInput<String>(topicName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'topicName': ?topicName,
    };
  }

  factory GetServiceTopicsArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceTopicsArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      pageNumber: map['pageNumber'] == null ? null : pulumi.Output.create<int>(map['pageNumber'] as int),
      pageSize: map['pageSize'] == null ? null : pulumi.Output.create<int>(map['pageSize'] as int),
      topicName: map['topicName'] == null ? null : pulumi.Output.create<String>(map['topicName'] as String),
    );
  }
}

