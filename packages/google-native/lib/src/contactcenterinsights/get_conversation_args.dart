// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenterinsights_v1_get_conversation_args_doc}
/// Arguments for getConversation.
/// {@endtemplate}
/// {@macro pulumi_contactcenterinsights_v1_get_conversation_args_doc}
class GetConversationArgs {
  final pulumi.Input<String> conversationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetConversationArgs].
  /// [conversationId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetConversationArgs({
    required String conversationId,
    required String location,
    String? project,
    String? view,
  })  : conversationId = pulumi.Input.asInput<String>(conversationId),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['conversationId'] = conversationId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final viewValue = view;
    if (viewValue != null) {
      map['view'] = viewValue;
    }
    return map;
  }

  factory GetConversationArgs.fromMap(Map<String, dynamic> map) {
    return GetConversationArgs(
      conversationId: map['conversationId'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}
