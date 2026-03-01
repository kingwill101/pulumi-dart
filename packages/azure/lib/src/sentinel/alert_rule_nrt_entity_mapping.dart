// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_rule_nrt_entity_mapping_field_mapping.dart';

class AlertRuleNrtEntityMapping {
  /// The type of the entity. Possible values are `Account`, `AzureResource`, `CloudApplication`, `DNS`, `File`, `FileHash`, `Host`, `IP`, `Mailbox`, `MailCluster`, `MailMessage`, `Malware`, `Process`, `RegistryKey`, `RegistryValue`, `SecurityGroup`, `SubmissionMail`, `URL`.
  final String entityType;
  /// A list of `field_mapping` blocks as defined below.
  final List<AlertRuleNrtEntityMappingFieldMapping> fieldMappings;

  /// Creates a new [AlertRuleNrtEntityMapping].
  /// [entityType] The type of the entity. Possible values are `Account`, `AzureResource`, `CloudApplication`, `DNS`, `File`, `FileHash`, `Host`, `IP`, `Mailbox`, `MailCluster`, `MailMessage`, `Malware`, `Process`, `RegistryKey`, `RegistryValue`, `SecurityGroup`, `SubmissionMail`, `URL`.
  /// [fieldMappings] A list of `field_mapping` blocks as defined below.
  AlertRuleNrtEntityMapping({
    required this.entityType,
    required this.fieldMappings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityType': entityType,
      'fieldMappings': pulumi.Input.encodeList<AlertRuleNrtEntityMappingFieldMapping, Map<String, dynamic>>(fieldMappings, (value) => value.toMap()),
    };
  }

  factory AlertRuleNrtEntityMapping.fromMap(Map<String, dynamic> map) {
    return AlertRuleNrtEntityMapping(
      entityType: map['entityType'] as String,
      fieldMappings: pulumi.Input.decodeList<AlertRuleNrtEntityMappingFieldMapping>(map['fieldMappings'], (value) => AlertRuleNrtEntityMappingFieldMapping.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

