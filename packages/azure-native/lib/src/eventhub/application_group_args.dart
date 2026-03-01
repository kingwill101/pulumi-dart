// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'throttling_policy.dart';

/// {@template pulumi_eventhub_application_group_args_doc}
/// The set of arguments for ApplicationGroup.
/// {@endtemplate}
/// {@macro pulumi_eventhub_application_group_args_doc}
class ApplicationGroupArgs {
  /// The Application Group name
  final pulumi.Input<String>? applicationGroupName;
  /// The Unique identifier for application group.Supports SAS(SASKeyName=KeyName) or AAD(AADAppID=Guid)
  final pulumi.Input<String> clientAppGroupIdentifier;
  /// Determines if Application Group is allowed to create connection with namespace or not. Once the isEnabled is set to false, all the existing connections of application group gets dropped and no new connections will be allowed
  final pulumi.Input<bool>? isEnabled;
  /// The Namespace name
  final pulumi.Input<String> namespaceName;
  /// List of group policies that define the behavior of application group. The policies can support resource governance scenarios such as limiting ingress or egress traffic.
  final pulumi.Input<List<ThrottlingPolicy>>? policies;
  /// Name of the resource group within the azure subscription.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ApplicationGroupArgs].
  /// [applicationGroupName] The Application Group name
  /// [clientAppGroupIdentifier] The Unique identifier for application group.Supports SAS(SASKeyName=KeyName) or AAD(AADAppID=Guid)
  /// [isEnabled] Determines if Application Group is allowed to create connection with namespace or not. Once the isEnabled is set to false, all the existing connections of application group gets dropped and no new connections will be allowed
  /// [namespaceName] The Namespace name
  /// [policies] List of group policies that define the behavior of application group. The policies can support resource governance scenarios such as limiting ingress or egress traffic.
  /// [resourceGroupName] Name of the resource group within the azure subscription.
  ApplicationGroupArgs({
    String? applicationGroupName,
    required String clientAppGroupIdentifier,
    bool? isEnabled,
    required String namespaceName,
    List<ThrottlingPolicy>? policies,
    required String resourceGroupName,
  }) :
      applicationGroupName = pulumi.Input.asOptionalInput<String>(applicationGroupName),
      clientAppGroupIdentifier = pulumi.Input.asInput<String>(clientAppGroupIdentifier),
      isEnabled = pulumi.Input.asOptionalInput<bool>(isEnabled),
      namespaceName = pulumi.Input.asInput<String>(namespaceName),
      policies = pulumi.Input.asOptionalInput<List<ThrottlingPolicy>>(policies),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupName': ?applicationGroupName,
      'clientAppGroupIdentifier': clientAppGroupIdentifier,
      'isEnabled': ?isEnabled,
      'namespaceName': namespaceName,
      'policies': ?pulumi.Input.mapOptionalInputValue<List<ThrottlingPolicy>, List<Map<String, dynamic>>>(policies, (value) => pulumi.Input.encodeList<ThrottlingPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ApplicationGroupArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationGroupArgs(
      applicationGroupName: map['applicationGroupName'] == null ? null : map['applicationGroupName'] as String,
      clientAppGroupIdentifier: map['clientAppGroupIdentifier'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      namespaceName: map['namespaceName'] as String,
      policies: map['policies'] == null ? null : pulumi.Input.decodeList<ThrottlingPolicy>(map['policies'], (value) => ThrottlingPolicy.fromMap((value as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

