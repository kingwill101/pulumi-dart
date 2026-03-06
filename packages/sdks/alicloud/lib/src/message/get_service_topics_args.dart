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
  const GetServiceTopicsArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.topicName,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      topicName: (() { final guardedValue = map['topicName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

