// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_threatdetection_image_event_operation_image_event_operation_args_doc}
/// The set of arguments for ImageEventOperation.
/// {@endtemplate}
/// {@macro pulumi_threatdetection_image_event_operation_image_event_operation_args_doc}
class ImageEventOperationArgs {
  /// The rule conditions. The value is in the JSON format. For more information, see [How to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-addimageeventoperation). **NOTE:** From version 1.255.0, `conditions` can be modified.
  final pulumi.Input<String> conditions;
  /// The keyword of the alert item.
  final pulumi.Input<String>? eventKey;
  /// The name of the alert item.
  final pulumi.Input<String>? eventName;
  /// The alert type.
  final pulumi.Input<String> eventType;
  /// The remarks.
  final pulumi.Input<String>? note;
  /// The operation code.
  final pulumi.Input<String> operationCode;
  /// The application scope of the rule.
  final pulumi.Input<String>? scenarios;
  /// The source of the whitelist. Valid values:
  final pulumi.Input<String>? source;

  /// Creates a new [ImageEventOperationArgs].
  /// [conditions] The rule conditions. The value is in the JSON format. For more information, see [How to use it](https://www.alibabacloud.com/help/en/security-center/developer-reference/api-sas-2018-12-03-addimageeventoperation). **NOTE:** From version 1.255.0, `conditions` can be modified.
  /// [eventKey] The keyword of the alert item.
  /// [eventName] The name of the alert item.
  /// [eventType] The alert type.
  /// [note] The remarks.
  /// [operationCode] The operation code.
  /// [scenarios] The application scope of the rule.
  /// [source] The source of the whitelist. Valid values:
  ImageEventOperationArgs({
    required this.conditions,
    this.eventKey,
    this.eventName,
    required this.eventType,
    this.note,
    required this.operationCode,
    this.scenarios,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': conditions,
      'eventKey': ?eventKey,
      'eventName': ?eventName,
      'eventType': eventType,
      'note': ?note,
      'operationCode': operationCode,
      'scenarios': ?scenarios,
      'source': ?source,
    };
  }

  factory ImageEventOperationArgs.fromMap(Map<String, dynamic> map) {
    return ImageEventOperationArgs(
      conditions: (map['conditions'] as String).input(),
      eventKey: map['eventKey'] == null ? null : (map['eventKey'] as String).input(),
      eventName: map['eventName'] == null ? null : (map['eventName'] as String).input(),
      eventType: (map['eventType'] as String).input(),
      note: map['note'] == null ? null : (map['note'] as String).input(),
      operationCode: (map['operationCode'] as String).input(),
      scenarios: map['scenarios'] == null ? null : (map['scenarios'] as String).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
    );
  }
}

