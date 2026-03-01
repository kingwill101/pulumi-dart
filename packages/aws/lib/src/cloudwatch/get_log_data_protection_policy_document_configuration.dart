// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_log_data_protection_policy_document_configuration_custom_data_identifier.dart';

class GetLogDataProtectionPolicyDocumentConfiguration {
  /// Configures custom regular expressions to detect sensitive data. Read more in [Custom data identifiers](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL-custom-data-identifiers.html).
  final List<
    GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier
  >?
  customDataIdentifiers;

  /// Creates a new [GetLogDataProtectionPolicyDocumentConfiguration].
  /// [customDataIdentifiers] Configures custom regular expressions to detect sensitive data. Read more in [Custom data identifiers](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/CWL-custom-data-identifiers.html).
  GetLogDataProtectionPolicyDocumentConfiguration({this.customDataIdentifiers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customDataIdentifiers': ?customDataIdentifiers == null
          ? null
          : pulumi.Input.encodeList<
              GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier,
              Map<String, dynamic>
            >(customDataIdentifiers!, (value) => value.toMap()),
    };
  }

  factory GetLogDataProtectionPolicyDocumentConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetLogDataProtectionPolicyDocumentConfiguration(
      customDataIdentifiers: map['customDataIdentifiers'] == null
          ? null
          : pulumi.Input.decodeList<
              GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier
            >(
              map['customDataIdentifiers'],
              (value) =>
                  GetLogDataProtectionPolicyDocumentConfigurationCustomDataIdentifier.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
    );
  }
}
