// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcare_v1_get_message_args_doc}
/// Arguments for getMessage.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1_get_message_args_doc}
class GetMessageArgs {
  final pulumi.Input<String> datasetId;
  final pulumi.Input<String> hl7V2StoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> messageId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? view;

  /// Creates a new [GetMessageArgs].
  /// [datasetId] Required.
  /// [hl7V2StoreId] Required.
  /// [location] Required.
  /// [messageId] Required.
  /// [project] Optional.
  /// [view] Optional.
  GetMessageArgs({
    required String datasetId,
    required String hl7V2StoreId,
    required String location,
    required String messageId,
    String? project,
    String? view,
  }) :
      datasetId = pulumi.Input.asInput<String>(datasetId),
      hl7V2StoreId = pulumi.Input.asInput<String>(hl7V2StoreId),
      location = pulumi.Input.asInput<String>(location),
      messageId = pulumi.Input.asInput<String>(messageId),
      project = pulumi.Input.asOptionalInput<String>(project),
      view = pulumi.Input.asOptionalInput<String>(view);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'hl7V2StoreId': hl7V2StoreId,
      'location': location,
      'messageId': messageId,
      'project': ?project,
      'view': ?view,
    };
  }

  factory GetMessageArgs.fromMap(Map<String, dynamic> map) {
    return GetMessageArgs(
      datasetId: map['datasetId'] as String,
      hl7V2StoreId: map['hl7V2StoreId'] as String,
      location: map['location'] as String,
      messageId: map['messageId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      view: map['view'] == null ? null : map['view'] as String,
    );
  }
}

