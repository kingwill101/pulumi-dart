// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Processor.
class ProcessorArgs {
  /// The time the processor was created.
  final Input<String>? createTime;

  /// The default processor version.
  final Input<String>? defaultProcessorVersion;

  /// The display name of the processor.
  final Input<String>? displayName;

  /// The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryption in CMEK scenarios.
  final Input<String>? kmsKeyName;
  final Input<String>? location;
  final Input<String>? project;

  /// The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor types, see FetchProcessorTypes.
  final Input<String>? type;

  ProcessorArgs({
    this.createTime,
    this.defaultProcessorVersion,
    this.displayName,
    this.kmsKeyName,
    this.location,
    this.project,
    this.type,
  });

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

  factory ProcessorArgs.fromMap(Map<String, dynamic> map) {
    return ProcessorArgs(
      createTime: Input.asOptionalInput<String>(map['createTime']),
      defaultProcessorVersion:
          Input.asOptionalInput<String>(map['defaultProcessorVersion']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      kmsKeyName: Input.asOptionalInput<String>(map['kmsKeyName']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
