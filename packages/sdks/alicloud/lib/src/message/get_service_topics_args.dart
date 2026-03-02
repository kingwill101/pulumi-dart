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
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex']! as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber']! as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      topicName: map['topicName'] == null ? null : (map['topicName']! as String).input(),
    );
  }
}

