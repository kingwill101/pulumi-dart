// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v3beta1_get_page_dialogflow_v3beta1_args_doc}
/// Arguments for getPage.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v3beta1_get_page_dialogflow_v3beta1_args_doc}
class GetPageDialogflowV3beta1Args {
  final pulumi.Input<String> agentId;
  final pulumi.Input<String> flowId;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String> pageId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPageDialogflowV3beta1Args].
  /// [agentId] Required.
  /// [flowId] Required.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [pageId] Required.
  /// [project] Optional.
  GetPageDialogflowV3beta1Args({
    required String agentId,
    required String flowId,
    String? languageCode,
    required String location,
    required String pageId,
    String? project,
  }) : agentId = pulumi.Input.asInput<String>(agentId),
       flowId = pulumi.Input.asInput<String>(flowId),
       languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
       location = pulumi.Input.asInput<String>(location),
       pageId = pulumi.Input.asInput<String>(pageId),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'flowId': flowId,
      'languageCode': ?languageCode,
      'location': location,
      'pageId': pageId,
      'project': ?project,
    };
  }

  factory GetPageDialogflowV3beta1Args.fromMap(Map<String, dynamic> map) {
    return GetPageDialogflowV3beta1Args(
      agentId: map['agentId'] as String,
      flowId: map['flowId'] as String,
      languageCode: map['languageCode'] == null
          ? null
          : map['languageCode'] as String,
      location: map['location'] as String,
      pageId: map['pageId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
