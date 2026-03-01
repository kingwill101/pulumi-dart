// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dialogflow_v2_get_intent_args_doc}
/// Arguments for getIntent.
/// {@endtemplate}
/// {@macro pulumi_dialogflow_v2_get_intent_args_doc}
class GetIntentArgs {
  final pulumi.Input<String> intentId;
  final pulumi.Input<String>? intentView;
  final pulumi.Input<String>? languageCode;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetIntentArgs].
  /// [intentId] Required.
  /// [intentView] Optional.
  /// [languageCode] Optional.
  /// [location] Required.
  /// [project] Optional.
  GetIntentArgs({
    required String intentId,
    String? intentView,
    String? languageCode,
    required String location,
    String? project,
  }) : intentId = pulumi.Input.asInput<String>(intentId),
       intentView = pulumi.Input.asOptionalInput<String>(intentView),
       languageCode = pulumi.Input.asOptionalInput<String>(languageCode),
       location = pulumi.Input.asInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intentId': intentId,
      'intentView': ?intentView,
      'languageCode': ?languageCode,
      'location': location,
      'project': ?project,
    };
  }

  factory GetIntentArgs.fromMap(Map<String, dynamic> map) {
    return GetIntentArgs(
      intentId: map['intentId'] as String,
      intentView: map['intentView'] == null
          ? null
          : map['intentView'] as String,
      languageCode: map['languageCode'] == null
          ? null
          : map['languageCode'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
