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
  const ApplicationGroupArgs({
    this.applicationGroupName,
    required this.clientAppGroupIdentifier,
    this.isEnabled,
    required this.namespaceName,
    this.policies,
    required this.resourceGroupName,
  });

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
      applicationGroupName: (() { final guardedValue = map['applicationGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientAppGroupIdentifier: pulumi.Input.fromValue(map['clientAppGroupIdentifier'] as String),
      isEnabled: (() { final guardedValue = map['isEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThrottlingPolicy>(guardedValue, (value) => ThrottlingPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
