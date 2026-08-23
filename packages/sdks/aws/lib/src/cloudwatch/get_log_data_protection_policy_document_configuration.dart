// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_data_protection_policy_document_configuration_custom_data_identifier.dart';

class GetLogDataProtectionPolicyDocumentConfiguration {
  /// Configures custom regular expressions to detect sensitive data. Read more in [Custom data identifiers](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL-custom-data-identifiers.html).
  final pulumi.Input<List<GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier>>? customDataIdentifiers;

  /// Creates a new [GetLogDataProtectionPolicyDocumentConfiguration].
  /// [customDataIdentifiers] Configures custom regular expressions to detect sensitive data. Read more in [Custom data identifiers](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL-custom-data-identifiers.html).
  const GetLogDataProtectionPolicyDocumentConfiguration({
    this.customDataIdentifiers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDataIdentifiers': ?pulumi.Input.mapOptionalInputValue<List<GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier>, List<Map<String, dynamic>>>(customDataIdentifiers, (value) => pulumi.Input.encodeList<GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetLogDataProtectionPolicyDocumentConfiguration.fromMap(Map<String, dynamic> map) {
    return GetLogDataProtectionPolicyDocumentConfiguration(
      customDataIdentifiers: (() { final guardedValue = map['customDataIdentifiers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier>(guardedValue, (value) => GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
