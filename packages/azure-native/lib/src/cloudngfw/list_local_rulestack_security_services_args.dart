// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudngfw_list_local_rulestack_security_services_args_doc}
/// Arguments for listLocalRulestackSecurityServices.
/// {@endtemplate}
/// {@macro pulumi_cloudngfw_list_local_rulestack_security_services_args_doc}
class ListLocalRulestackSecurityServicesArgs {
  /// LocalRulestack resource name
  final pulumi.Input<String> localRulestackName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String>? skip;
  final pulumi.Input<int>? top;
  final pulumi.Input<String> type;

  /// Creates a new [ListLocalRulestackSecurityServicesArgs].
  /// [localRulestackName] LocalRulestack resource name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [skip] Optional.
  /// [top] Optional.
  /// [type] Required.
  ListLocalRulestackSecurityServicesArgs({
    required String localRulestackName,
    required String resourceGroupName,
    String? skip,
    int? top,
    required String type,
  }) :
      localRulestackName = pulumi.Input.asInput<String>(localRulestackName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      skip = pulumi.Input.asOptionalInput<String>(skip),
      top = pulumi.Input.asOptionalInput<int>(top),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localRulestackName': localRulestackName,
      'resourceGroupName': resourceGroupName,
      'skip': ?skip,
      'top': ?top,
      'type': type,
    };
  }

  factory ListLocalRulestackSecurityServicesArgs.fromMap(Map<String, dynamic> map) {
    return ListLocalRulestackSecurityServicesArgs(
      localRulestackName: map['localRulestackName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skip: map['skip'] == null ? null : map['skip'] as String,
      top: map['top'] == null ? null : map['top'] as int,
      type: map['type'] as String,
    );
  }
}

