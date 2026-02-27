// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Processor.
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
      createTime: pulumi.Input.asOptionalInput<String>(map['createTime']),
      defaultProcessorVersion:
          pulumi.Input.asOptionalInput<String>(map['defaultProcessorVersion']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      kmsKeyName: pulumi.Input.asOptionalInput<String>(map['kmsKeyName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      type: pulumi.Input.asOptionalInput<String>(map['type']),
    );
  }
}
