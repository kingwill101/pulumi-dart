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
    required pulumi.Output<String> conditions,
    pulumi.Output<String>? eventKey,
    pulumi.Output<String>? eventName,
    required pulumi.Output<String> eventType,
    pulumi.Output<String>? note,
    required pulumi.Output<String> operationCode,
    pulumi.Output<String>? scenarios,
    pulumi.Output<String>? source,
  }) :
      conditions = pulumi.Input.asInput<String>(conditions),
      eventKey = pulumi.Input.asOptionalInput<String>(eventKey),
      eventName = pulumi.Input.asOptionalInput<String>(eventName),
      eventType = pulumi.Input.asInput<String>(eventType),
      note = pulumi.Input.asOptionalInput<String>(note),
      operationCode = pulumi.Input.asInput<String>(operationCode),
      scenarios = pulumi.Input.asOptionalInput<String>(scenarios),
      source = pulumi.Input.asOptionalInput<String>(source);

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
      conditions: pulumi.Output.create<String>(map['conditions'] as String),
      eventKey: map['eventKey'] == null ? null : pulumi.Output.create<String>(map['eventKey'] as String),
      eventName: map['eventName'] == null ? null : pulumi.Output.create<String>(map['eventName'] as String),
      eventType: pulumi.Output.create<String>(map['eventType'] as String),
      note: map['note'] == null ? null : pulumi.Output.create<String>(map['note'] as String),
      operationCode: pulumi.Output.create<String>(map['operationCode'] as String),
      scenarios: map['scenarios'] == null ? null : pulumi.Output.create<String>(map['scenarios'] as String),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
    );
  }
}

