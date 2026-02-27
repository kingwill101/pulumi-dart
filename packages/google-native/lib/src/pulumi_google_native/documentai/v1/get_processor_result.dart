// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_documentai_v1_processor_version_alias_response.dart';

/// Result data returned by getProcessor.
class GetProcessorResult {
  /// The time the processor was created.
  final String createTime;

  /// The default processor version.
  final String defaultProcessorVersion;

  /// The display name of the processor.
  final String displayName;

  /// The [KMS key](https://cloud.google.com/security-key-management) used for encryption and decryption in CMEK scenarios.
  final String kmsKeyName;

  /// Immutable. The resource name of the processor. Format: `projects/{project}/locations/{location}/processors/{processor}`
  final String name;

  /// Immutable. The http endpoint that can be called to invoke processing.
  final String processEndpoint;

  /// The processor version aliases.
  final List<GoogleCloudDocumentaiV1ProcessorVersionAliasResponse>
      processorVersionAliases;

  /// The state of the processor.
  final String state;

  /// The processor type, such as: `OCR_PROCESSOR`, `INVOICE_PROCESSOR`. To get a list of processor types, see FetchProcessorTypes.
  final String type;

  GetProcessorResult({
    required this.createTime,
    required this.defaultProcessorVersion,
    required this.displayName,
    required this.kmsKeyName,
    required this.name,
    required this.processEndpoint,
    required this.processorVersionAliases,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['defaultProcessorVersion'] = defaultProcessorVersion;
    map['displayName'] = displayName;
    map['kmsKeyName'] = kmsKeyName;
    map['name'] = name;
    map['processEndpoint'] = processEndpoint;
    map['processorVersionAliases'] = pulumi.Input.encodeList<
            GoogleCloudDocumentaiV1ProcessorVersionAliasResponse,
            Map<String, dynamic>>(
        processorVersionAliases, (value) => value.toMap());
    map['state'] = state;
    map['type'] = type;
    return map;
  }

  factory GetProcessorResult.fromMap(Map<String, dynamic> map) {
    return GetProcessorResult(
      createTime: map['createTime'] as String,
      defaultProcessorVersion: map['defaultProcessorVersion'] as String,
      displayName: map['displayName'] as String,
      kmsKeyName: map['kmsKeyName'] as String,
      name: map['name'] as String,
      processEndpoint: map['processEndpoint'] as String,
      processorVersionAliases: pulumi.Input.decodeList<
              GoogleCloudDocumentaiV1ProcessorVersionAliasResponse>(
          map['processorVersionAliases'],
          (value) =>
              GoogleCloudDocumentaiV1ProcessorVersionAliasResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}
