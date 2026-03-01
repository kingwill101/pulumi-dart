// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'category.dart';
import 'destination_addr.dart';
import 'source_addr.dart';
import 'tag_info.dart';

/// {@template pulumi_cloudngfw_local_rule_args_doc}
/// The set of arguments for LocalRule.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_local_rule_args_doc}
class LocalRuleArgs {
  /// rule action
  final pulumi.Input<String>? actionType;
  /// array of rule applications
  final pulumi.Input<List<String>>? applications;
  /// rule comment
  final pulumi.Input<String>? auditComment;
  /// rule category
  final pulumi.Input<Category>? category;
  /// enable or disable decryption
  final pulumi.Input<String>? decryptionRuleType;
  /// rule description
  final pulumi.Input<String>? description;
  /// destination address
  final pulumi.Input<DestinationAddr>? destination;
  /// enable or disable logging
  final pulumi.Input<String>? enableLogging;
  /// inbound Inspection Certificate
  final pulumi.Input<String>? inboundInspectionCertificate;
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// cidr should not be 'any'
  final pulumi.Input<String>? negateDestination;
  /// cidr should not be 'any'
  final pulumi.Input<String>? negateSource;
  /// Local Rule priority
  final pulumi.Input<String>? priority;
  /// any, application-default, TCP:number, UDP:number
  final pulumi.Input<String>? protocol;
  /// prot port list
  final pulumi.Input<List<String>>? protocolPortList;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// rule name
  final pulumi.Input<String> ruleName;
  /// state of this rule
  final pulumi.Input<String>? ruleState;
  /// source address
  final pulumi.Input<SourceAddr>? source;
  /// tag for rule
  final pulumi.Input<List<TagInfo>>? tags;

  /// Creates a new [LocalRuleArgs].
  /// [actionType] rule action
  /// [applications] array of rule applications
  /// [auditComment] rule comment
  /// [category] rule category
  /// [decryptionRuleType] enable or disable decryption
  /// [description] rule description
  /// [destination] destination address
  /// [enableLogging] enable or disable logging
  /// [inboundInspectionCertificate] inbound Inspection Certificate
  /// [localRulestackName] LocalRulestack resource name
  /// [negateDestination] cidr should not be 'any'
  /// [negateSource] cidr should not be 'any'
  /// [priority] Local Rule priority
  /// [protocol] any, application-default, TCP:number, UDP:number
  /// [protocolPortList] prot port list
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [ruleName] rule name
  /// [ruleState] state of this rule
  /// [source] source address
  /// [tags] tag for rule
  LocalRuleArgs({
    String? actionType,
    List<String>? applications,
    String? auditComment,
    Category? category,
    String? decryptionRuleType,
    String? description,
    DestinationAddr? destination,
    String? enableLogging,
    String? inboundInspectionCertificate,
    required String localRulestackName,
    String? negateDestination,
    String? negateSource,
    String? priority,
    String? protocol,
    List<String>? protocolPortList,
    required String resourceGroupName,
    required String ruleName,
    String? ruleState,
    SourceAddr? source,
    List<TagInfo>? tags,
  }) :
      actionType = pulumi.Input.asOptionalInput<String>(actionType),
      applications = pulumi.Input.asOptionalInput<List<String>>(applications),
      auditComment = pulumi.Input.asOptionalInput<String>(auditComment),
      category = pulumi.Input.asOptionalInput<Category>(category),
      decryptionRuleType = pulumi.Input.asOptionalInput<String>(decryptionRuleType),
      description = pulumi.Input.asOptionalInput<String>(description),
      destination = pulumi.Input.asOptionalInput<DestinationAddr>(destination),
      enableLogging = pulumi.Input.asOptionalInput<String>(enableLogging),
      inboundInspectionCertificate = pulumi.Input.asOptionalInput<String>(inboundInspectionCertificate),
      localRulestackName = pulumi.Input.asInput<String>(localRulestackName),
      negateDestination = pulumi.Input.asOptionalInput<String>(negateDestination),
      negateSource = pulumi.Input.asOptionalInput<String>(negateSource),
      priority = pulumi.Input.asOptionalInput<String>(priority),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      protocolPortList = pulumi.Input.asOptionalInput<List<String>>(protocolPortList),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      ruleState = pulumi.Input.asOptionalInput<String>(ruleState),
      source = pulumi.Input.asOptionalInput<SourceAddr>(source),
      tags = pulumi.Input.asOptionalInput<List<TagInfo>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': ?actionType,
      'applications': ?applications,
      'auditComment': ?auditComment,
      'category': ?pulumi.Input.mapOptionalInputValue<Category, Map<String, dynamic>>(category, (value) => value.toMap()),
      'decryptionRuleType': ?decryptionRuleType,
      'description': ?description,
      'destination': ?pulumi.Input.mapOptionalInputValue<DestinationAddr, Map<String, dynamic>>(destination, (value) => value.toMap()),
      'enableLogging': ?enableLogging,
      'inboundInspectionCertificate': ?inboundInspectionCertificate,
      'localRulestackName': localRulestackName,
      'negateDestination': ?negateDestination,
      'negateSource': ?negateSource,
      'priority': ?priority,
      'protocol': ?protocol,
      'protocolPortList': ?protocolPortList,
      'resourceGroupName': resourceGroupName,
      'ruleName': ruleName,
      'ruleState': ?ruleState,
      'source': ?pulumi.Input.mapOptionalInputValue<SourceAddr, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagInfo>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LocalRuleArgs.fromMap(Map<String, dynamic> map) {
    return LocalRuleArgs(
      actionType: map['actionType'] == null ? null : map['actionType'] as String,
      applications: map['applications'] == null ? null : (map['applications'] as List).cast<String>(),
      auditComment: map['auditComment'] == null ? null : map['auditComment'] as String,
      category: map['category'] == null ? null : Category.fromMap((map['category'] as Map).cast<String, dynamic>()),
      decryptionRuleType: map['decryptionRuleType'] == null ? null : map['decryptionRuleType'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      destination: map['destination'] == null ? null : DestinationAddr.fromMap((map['destination'] as Map).cast<String, dynamic>()),
      enableLogging: map['enableLogging'] == null ? null : map['enableLogging'] as String,
      inboundInspectionCertificate: map['inboundInspectionCertificate'] == null ? null : map['inboundInspectionCertificate'] as String,
      localRulestackName: map['localRulestackName'] as String,
      negateDestination: map['negateDestination'] == null ? null : map['negateDestination'] as String,
      negateSource: map['negateSource'] == null ? null : map['negateSource'] as String,
      priority: map['priority'] == null ? null : map['priority'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      protocolPortList: map['protocolPortList'] == null ? null : (map['protocolPortList'] as List).cast<String>(),
      resourceGroupName: map['resourceGroupName'] as String,
      ruleName: map['ruleName'] as String,
      ruleState: map['ruleState'] == null ? null : map['ruleState'] as String,
      source: map['source'] == null ? null : SourceAddr.fromMap((map['source'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagInfo>(map['tags'], (value) => TagInfo.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

