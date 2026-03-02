// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'category.dart';
import 'destination_addr.dart';
import 'source_addr.dart';
import 'tag_info.dart';

/// {@template pulumi_cloudngfw_post_rule_args_doc}
/// The set of arguments for PostRule.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_post_rule_args_doc}
class PostRuleArgs {
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
  /// GlobalRulestack resource name
  final pulumi.Input<String> globalRulestackName;
  /// inbound Inspection Certificate
  final pulumi.Input<String>? inboundInspectionCertificate;
  /// cidr should not be 'any'
  final pulumi.Input<String>? negateDestination;
  /// cidr should not be 'any'
  final pulumi.Input<String>? negateSource;
  /// Post Rule priority
  final pulumi.Input<String>? priority;
  /// any, application-default, TCP:number, UDP:number
  final pulumi.Input<String>? protocol;
  /// prot port list
  final pulumi.Input<List<String>>? protocolPortList;
  /// rule name
  final pulumi.Input<String> ruleName;
  /// state of this rule
  final pulumi.Input<String>? ruleState;
  /// source address
  final pulumi.Input<SourceAddr>? source;
  /// tag for rule
  final pulumi.Input<List<TagInfo>>? tags;

  /// Creates a new [PostRuleArgs].
  /// [actionType] rule action
  /// [applications] array of rule applications
  /// [auditComment] rule comment
  /// [category] rule category
  /// [decryptionRuleType] enable or disable decryption
  /// [description] rule description
  /// [destination] destination address
  /// [enableLogging] enable or disable logging
  /// [globalRulestackName] GlobalRulestack resource name
  /// [inboundInspectionCertificate] inbound Inspection Certificate
  /// [negateDestination] cidr should not be 'any'
  /// [negateSource] cidr should not be 'any'
  /// [priority] Post Rule priority
  /// [protocol] any, application-default, TCP:number, UDP:number
  /// [protocolPortList] prot port list
  /// [ruleName] rule name
  /// [ruleState] state of this rule
  /// [source] source address
  /// [tags] tag for rule
  PostRuleArgs({
    this.actionType,
    this.applications,
    this.auditComment,
    this.category,
    this.decryptionRuleType,
    this.description,
    this.destination,
    this.enableLogging,
    required this.globalRulestackName,
    this.inboundInspectionCertificate,
    this.negateDestination,
    this.negateSource,
    this.priority,
    this.protocol,
    this.protocolPortList,
    required this.ruleName,
    this.ruleState,
    this.source,
    this.tags,
  });

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
      'globalRulestackName': globalRulestackName,
      'inboundInspectionCertificate': ?inboundInspectionCertificate,
      'negateDestination': ?negateDestination,
      'negateSource': ?negateSource,
      'priority': ?priority,
      'protocol': ?protocol,
      'protocolPortList': ?protocolPortList,
      'ruleName': ruleName,
      'ruleState': ?ruleState,
      'source': ?pulumi.Input.mapOptionalInputValue<SourceAddr, Map<String, dynamic>>(source, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagInfo>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PostRuleArgs.fromMap(Map<String, dynamic> map) {
    return PostRuleArgs(
      actionType: map['actionType'] == null ? null : (map['actionType']! as String).input(),
      applications: map['applications'] == null ? null : ((map['applications']! as List).cast<String>()).input(),
      auditComment: map['auditComment'] == null ? null : (map['auditComment']! as String).input(),
      category: map['category'] == null ? null : (Category.fromMap((map['category']! as Map).cast<String, dynamic>())).input(),
      decryptionRuleType: map['decryptionRuleType'] == null ? null : (map['decryptionRuleType']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      destination: map['destination'] == null ? null : (DestinationAddr.fromMap((map['destination']! as Map).cast<String, dynamic>())).input(),
      enableLogging: map['enableLogging'] == null ? null : (map['enableLogging']! as String).input(),
      globalRulestackName: (map['globalRulestackName'] as String).input(),
      inboundInspectionCertificate: map['inboundInspectionCertificate'] == null ? null : (map['inboundInspectionCertificate']! as String).input(),
      negateDestination: map['negateDestination'] == null ? null : (map['negateDestination']! as String).input(),
      negateSource: map['negateSource'] == null ? null : (map['negateSource']! as String).input(),
      priority: map['priority'] == null ? null : (map['priority']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      protocolPortList: map['protocolPortList'] == null ? null : ((map['protocolPortList']! as List).cast<String>()).input(),
      ruleName: (map['ruleName'] as String).input(),
      ruleState: map['ruleState'] == null ? null : (map['ruleState']! as String).input(),
      source: map['source'] == null ? null : (SourceAddr.fromMap((map['source']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<TagInfo>(map['tags']!, (value) => TagInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

