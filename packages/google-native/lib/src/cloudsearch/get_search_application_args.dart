// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudsearch_v1_get_search_application_args_doc}
/// Arguments for getSearchApplication.
/// {@endtemplate}
/// {@macro pulumi_cloudsearch_v1_get_search_application_args_doc}
class GetSearchApplicationArgs {
  final pulumi.Input<bool>? debugOptionsEnableDebugging;
  final pulumi.Input<String> searchapplicationId;

  /// Creates a new [GetSearchApplicationArgs].
  /// [debugOptionsEnableDebugging] Optional.
  /// [searchapplicationId] Required.
  GetSearchApplicationArgs({
    bool? debugOptionsEnableDebugging,
    required String searchapplicationId,
  }) :
      debugOptionsEnableDebugging = pulumi.Input.asOptionalInput<bool>(debugOptionsEnableDebugging),
      searchapplicationId = pulumi.Input.asInput<String>(searchapplicationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'debugOptionsEnableDebugging': ?debugOptionsEnableDebugging,
      'searchapplicationId': searchapplicationId,
    };
  }

  factory GetSearchApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetSearchApplicationArgs(
      debugOptionsEnableDebugging: map['debugOptionsEnableDebugging'] == null ? null : map['debugOptionsEnableDebugging'] as bool,
      searchapplicationId: map['searchapplicationId'] as String,
    );
  }
}

