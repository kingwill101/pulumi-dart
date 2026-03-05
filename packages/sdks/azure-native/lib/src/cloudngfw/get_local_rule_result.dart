// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'category_response.dart';
import 'destination_addr_response.dart';
import 'source_addr_response.dart';
import 'system_data_response.dart';
import 'tag_info_response.dart';

/// Result data returned by getLocalRule.
class GetLocalRuleResult {
  /// rule action
  final String? actionType;
  /// array of rule applications
  final List<String>? applications;
  /// rule comment
  final String? auditComment;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// rule category
  final CategoryResponse? category;
  /// enable or disable decryption
  final String? decryptionRuleType;
  /// rule description
  final String? description;
  /// destination address
  final DestinationAddrResponse? destination;
  /// enable or disable logging
  final String? enableLogging;
  /// etag info
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// inbound Inspection Certificate
  final String? inboundInspectionCertificate;
  /// The name of the resource
  final String name;
  /// cidr should not be 'any'
  final String? negateDestination;
  /// cidr should not be 'any'
  final String? negateSource;
  final int priority;
  /// any, application-default, TCP:number, UDP:number
  final String? protocol;
  /// prot port list
  final List<String>? protocolPortList;
  /// Provisioning state of the resource.
  final String provisioningState;
  /// rule name
  final String ruleName;
  /// state of this rule
  final String? ruleState;
  /// source address
  final SourceAddrResponse? source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// tag for rule
  final List<TagInfoResponse>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetLocalRuleResult].
  /// [actionType] rule action
  /// [applications] array of rule applications
  /// [auditComment] rule comment
  /// [azureApiVersion] The Azure API version of the resource.
  /// [category] rule category
  /// [decryptionRuleType] enable or disable decryption
  /// [description] rule description
  /// [destination] destination address
  /// [enableLogging] enable or disable logging
  /// [etag] etag info
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [inboundInspectionCertificate] inbound Inspection Certificate
  /// [name] The name of the resource
  /// [negateDestination] cidr should not be 'any'
  /// [negateSource] cidr should not be 'any'
  /// [priority] Required.
  /// [protocol] any, application-default, TCP:number, UDP:number
  /// [protocolPortList] prot port list
  /// [provisioningState] Provisioning state of the resource.
  /// [ruleName] rule name
  /// [ruleState] state of this rule
  /// [source] source address
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] tag for rule
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetLocalRuleResult({
    this.actionType,
    this.applications,
    this.auditComment,
    required this.azureApiVersion,
    this.category,
    this.decryptionRuleType,
    this.description,
    this.destination,
    this.enableLogging,
    this.etag,
    required this.id,
    this.inboundInspectionCertificate,
    required this.name,
    this.negateDestination,
    this.negateSource,
    required this.priority,
    this.protocol,
    this.protocolPortList,
    required this.provisioningState,
    required this.ruleName,
    this.ruleState,
    this.source,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': ?actionType,
      'applications': ?applications,
      'auditComment': ?auditComment,
      'azureApiVersion': azureApiVersion,
      'category': ?category?.toMap(),
      'decryptionRuleType': ?decryptionRuleType,
      'description': ?description,
      'destination': ?destination?.toMap(),
      'enableLogging': ?enableLogging,
      'etag': ?etag,
      'id': id,
      'inboundInspectionCertificate': ?inboundInspectionCertificate,
      'name': name,
      'negateDestination': ?negateDestination,
      'negateSource': ?negateSource,
      'priority': priority,
      'protocol': ?protocol,
      'protocolPortList': ?protocolPortList,
      'provisioningState': provisioningState,
      'ruleName': ruleName,
      'ruleState': ?ruleState,
      'source': ?source?.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?(() { final guardedValue = tags; if (guardedValue == null) return null; return pulumi.Input.encodeList<TagInfoResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'type': type,
    };
  }

  factory GetLocalRuleResult.fromMap(Map<String, dynamic> map) {
    return GetLocalRuleResult(
      actionType: (() { final guardedValue = map['actionType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applications: (() { final guardedValue = map['applications']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      auditComment: (() { final guardedValue = map['auditComment']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return CategoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      decryptionRuleType: (() { final guardedValue = map['decryptionRuleType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return DestinationAddrResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      enableLogging: (() { final guardedValue = map['enableLogging']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      inboundInspectionCertificate: (() { final guardedValue = map['inboundInspectionCertificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      negateDestination: (() { final guardedValue = map['negateDestination']; if (guardedValue == null) return null; return guardedValue as String; })(),
      negateSource: (() { final guardedValue = map['negateSource']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: map['priority'] as int,
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocolPortList: (() { final guardedValue = map['protocolPortList']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      provisioningState: map['provisioningState'] as String,
      ruleName: map['ruleName'] as String,
      ruleState: (() { final guardedValue = map['ruleState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return SourceAddrResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TagInfoResponse>(guardedValue, (value) => TagInfoResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      type: map['type'] as String,
    );
  }
}

