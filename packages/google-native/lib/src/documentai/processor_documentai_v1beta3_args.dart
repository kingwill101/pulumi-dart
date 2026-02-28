// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_documentai_v1beta3_processor_documentai_v1beta3_args_doc}
/// The set of arguments for Processor.
/// {@endtemplate}
/// {@macro pulumi_documentai_v1beta3_processor_documentai_v1beta3_args_doc}
class ProcessorDocumentaiV1beta3Args {
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

  /// Creates a new [ProcessorDocumentaiV1beta3Args].
  /// [createTime] The time the processor was created.
  /// [defaultProcessorVersion] The default processor version.
  /// [displayName] The display name of the processor.
  /// [kmsKeyName] The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryption in CMEK scenarios.
  /// [location] Optional.
  /// [project] Optional.
  /// [type] The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor types, see FetchProcessorTypes.
  ProcessorDocumentaiV1beta3Args({
    String? createTime,
    String? defaultProcessorVersion,
    String? displayName,
    String? kmsKeyName,
    String? location,
    String? project,
    String? type,
  })  : createTime = pulumi.Input.asOptionalInput<String>(createTime),
        defaultProcessorVersion =
            pulumi.Input.asOptionalInput<String>(defaultProcessorVersion),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        kmsKeyName = pulumi.Input.asOptionalInput<String>(kmsKeyName),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final defaultProcessorVersionValue = defaultProcessorVersion;
    if (defaultProcessorVersionValue != null) {
      map['defaultProcessorVersion'] = defaultProcessorVersionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ProcessorDocumentaiV1beta3Args.fromMap(Map<String, dynamic> map) {
    return ProcessorDocumentaiV1beta3Args(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      defaultProcessorVersion: map['defaultProcessorVersion'] == null
          ? null
          : map['defaultProcessorVersion'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
