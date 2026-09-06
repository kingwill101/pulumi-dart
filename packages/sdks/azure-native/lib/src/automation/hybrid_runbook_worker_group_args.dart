// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'run_as_credential_association_property.dart';

/// {@template pulumi_automation_hybrid_runbook_worker_group_args_doc}
/// The set of arguments for HybridRunbookWorkerGroup.
/// {@endtemplate}
/// {@macro pulumi_automation_hybrid_runbook_worker_group_args_doc}
class HybridRunbookWorkerGroupArgs {
  /// The name of the automation account.
  final pulumi.Input<String> automationAccountName;
  /// Sets the credential of a worker group.
  final pulumi.Input<RunAsCredentialAssociationProperty?>? credential;
  /// The hybrid runbook worker group name
  final pulumi.Input<String?>? hybridRunbookWorkerGroupName;
  /// Gets or sets the name of the resource.
  final pulumi.Input<String?>? name;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [HybridRunbookWorkerGroupArgs].
  /// [automationAccountName] The name of the automation account.
  /// [credential] Sets the credential of a worker group.
  /// [hybridRunbookWorkerGroupName] The hybrid runbook worker group name
  /// [name] Gets or sets the name of the resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const HybridRunbookWorkerGroupArgs({
    required this.automationAccountName,
    this.credential,
    this.hybridRunbookWorkerGroupName,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'credential': ?pulumi.Input.mapOptionalInputValue<RunAsCredentialAssociationProperty, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'hybridRunbookWorkerGroupName': ?hybridRunbookWorkerGroupName,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory HybridRunbookWorkerGroupArgs.fromMap(Map<String, dynamic> map) {
    return HybridRunbookWorkerGroupArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RunAsCredentialAssociationProperty.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hybridRunbookWorkerGroupName: (() { final guardedValue = map['hybridRunbookWorkerGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
