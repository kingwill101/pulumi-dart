// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_documentai_v1_processor_args_doc}
/// The set of arguments for Processor.
/// {@endtemplate}
/// {@macro pulumi_documentai_v1_processor_args_doc}
class ProcessorArgs {
  /// The time the processor was created.
  final pulumi.Input<String>? createTime;

  /// The default processor version.
  final pulumi.Input<String>? defaultProcessorVersion;

  /// The display name of the processor.
  final pulumi.Input<String>? displayName;

  /// The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryption in CMEK scenarios.
  final pulumi.Input<String>? kmsKeyName;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor types, see FetchProcessorTypes.
  final pulumi.Input<String>? type;

  /// Creates a new [ProcessorArgs].
  /// [createTime] The time the processor was created.
  /// [defaultProcessorVersion] The default processor version.
  /// [displayName] The display name of the processor.
  /// [kmsKeyName] The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryption in CMEK scenarios.
  /// [location] Optional.
  /// [project] Optional.
  /// [type] The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor types, see FetchProcessorTypes.
  ProcessorArgs({
    String? createTime,
    String? defaultProcessorVersion,
    String? displayName,
    String? kmsKeyName,
    String? location,
    String? project,
    String? type,
  }) : createTime = pulumi.Input.asOptionalInput<String>(createTime),
       defaultProcessorVersion = pulumi.Input.asOptionalInput<String>(
         defaultProcessorVersion,
       ),
       displayName = pulumi.Input.asOptionalInput<String>(displayName),
       kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'defaultProcessorVersion': ?defaultProcessorVersion,
      'displayName': ?displayName,
      'kmsKeyName': ?kmsKeyName,
      'location': ?location,
      'project': ?project,
      'type': ?type,
    };
  }

  factory ProcessorArgs.fromMap(Map<String, dynamic> map) {
    return ProcessorArgs(
      createTime: map['createTime'] == null
          ? null
          : map['createTime'] as String,
      defaultProcessorVersion: map['defaultProcessorVersion'] == null
          ? null
          : map['defaultProcessorVersion'] as String,
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      kmsKeyName: map['kmsKeyName'] == null
          ? null
          : map['kmsKeyName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
